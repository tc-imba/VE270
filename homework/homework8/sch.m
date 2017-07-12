% function sch(input, output)
% Author: tc-imba (https://github.com/tc-imba)
% Date: July 5, 2017
% Latest update: July 5, 2017
% 
% This program is used to convert a truth table into some LaTeX code to
% display it by a schemeatics and equations
% 
% Tikz package is required, and two tikzlibrary should be used in LaTeX
%   \usepackage{tikz}
%   \usetikzlibrary{circuits.logic.US}
%   \usetikzlibrary{calc}
%
% Input file format:
%   First line : size of state register
%   Second line: input size and inputs
%   Third line : output size and outputs
%   Other lines: truth table 2^(size+input size) lines
% 
% For example:
%   3               the state register is 3 bit (S2 S1 S0)=>(N2 N1 N0)
%   1 I             input size is 1, I is the input
%   3 X Y Z         output size is 3, X Y Z are the outputs
%   0 0 1 0 0 0     S2 S1 S0 I=0000, N2 N1 N0 X Y Z=001000
%   0 1 0 0 0 0     S2 S1 S0 I=0001, N2 N1 N0 X Y Z=010000
%   0 0 1 0 0 0     S2 S1 S0 I=0010, N2 N1 N0 X Y Z=001000
%   0 0 0 0 0 0     S2 S1 S0 I=0011, N2 N1 N0 X Y Z=000000
%   0 1 1 0 0 1     S2 S1 S0 I=0100, N2 N1 N0 X Y Z=011001
%   1 0 0 0 0 1     S2 S1 S0 I=0101, N2 N1 N0 X Y Z=100001
%   0 1 1 0 0 1     S2 S1 S0 I=0110, N2 N1 N0 X Y Z=011001
%   0 0 0 0 0 1     S2 S1 S0 I=0111, N2 N1 N0 X Y Z=000001
%   1 0 1 0 1 0     S2 S1 S0 I=1000, N2 N1 N0 X Y Z=101010
%   1 1 0 0 1 0     S2 S1 S0 I=1001, N2 N1 N0 X Y Z=110010
%   1 0 1 0 1 0     S2 S1 S0 I=1010, N2 N1 N0 X Y Z=101010
%   0 0 0 0 1 0     S2 S1 S0 I=1011, N2 N1 N0 X Y Z=000010
%   1 1 0 1 0 0     S2 S1 S0 I=1100, N2 N1 N0 X Y Z=110100
%   0 0 0 1 0 0     S2 S1 S0 I=1101, N2 N1 N0 X Y Z=000100
%   - - - - - -     S2 S1 S0 I=1110, N2 N1 N0 X Y Z=XXXXXX
%   - - - - - -     S2 S1 S0 I=1111, N2 N1 N0 X Y Z=XXXXXX
% 
% Acknowledgement: Using Petter Källström's minTruthtable
% (https://mathworks.com/matlabcentral/fileexchange/37118)
%

function sch(input, output, varargin)
    flag_tt=length(varargin)==0;
    flag_ct=flag_tt;
    flag_eq=flag_tt;    
    for i=1:length(varargin)
        if char(varargin{i})=='tt' 
            flag_tt=true;
        elseif char(varargin{i})=='ct' 
            flag_ct=true;
        elseif char(varargin{i})=='eq' 
            flag_eq=true;
        end
    end
    fid = fopen(input, 'r');
    bit = fscanf(fid, '%d', 1);
    ni = fscanf(fid, '%d', 1);
    inputs = {};
    for i=1:ni
        inputs = [inputs, fscanf(fid, '%s', 1)];
    end
    no = fscanf(fid, '%d', 1);
    outputs = {};
    for i=1:no
        outputs = [outputs, fscanf(fid, '%s', 1)];
    end

    data = zeros(2^(bit+ni), bit+no);
    for i=1:2^(bit+ni)
        data(i,:) = fscanf(fid, '%s', bit+no);
    end
    data=char(data');
    fclose(fid);

    fid = fopen(output, 'w');

    % Truth Table
    if flag_tt
        fprintf(fid, 'The truth table is \n\n');
        fprintf(fid, '\\begin{center}\n\\begin{tabular}{');
        for i=1:bit+ni
            fprintf(fid, 'c');
        end
        fprintf(fid, '|');
        for i=1:bit+no
            fprintf(fid, 'c');
        end
        fprintf(fid, '}\n');
        for i=1:bit
            fprintf(fid, '$s_{%d}$ & ', bit-i);
        end
        for i=1:ni
            fprintf(fid, '$%s$ & ', char(inputs(i)));
        end
        for i=1:bit
            fprintf(fid, '$n_{%d}$ ', bit-i);
            if no>0 || i~=bit
                fprintf(fid, '& ');
            end
        end
        for i=1:no
            fprintf(fid, '$%s$ ', char(outputs(i)));
            if i~=no
                fprintf(fid, '& ');
            end
        end
        fprintf(fid, '\\\\\n\\hline\n');
        for i=1:2^(bit+ni)
            a = ceil(i/(2^ni));
            for j=1:bit
                b = mod(a,2^(bit-j+1));
                fprintf(fid, '%d & ', b>2^(bit-j)||b==0);
            end
            for j=1:ni
                b = mod(i,2^(ni-j+1));
                fprintf(fid, '%d & ', b>2^(ni-j)||b==0);
            end
            for j=1:bit
                b = data(j,i);
                if b=='-'
                    b = 'X';
                end
                fprintf(fid, '%c ', b);
                if no>0 || j~=bit
                    fprintf(fid, '& '); 
                end
            end
            for j=1:no
                b = data(j+bit,i);
                if b=='-'
                    b = 'X';
                end
                fprintf(fid, '%c ', b);
                if j~=no
                    fprintf(fid, '& ');
                end
            end
            fprintf(fid, '\\\\\n');
        end
        fprintf(fid, '\\end{tabular}\n\\end{center}\n\n');
    end
    
    % Equation
    if flag_eq
        fprintf(fid, 'The euqations are \n\n');
        for i=1:bit+no
            bins = minTruthtable(data(i,:), 'e');
            fprintf(fid, '$$');
            if i<=bit
                fprintf(fid, 'n_{%d}=', bit-i);
            else
                fprintf(fid, '%s=', char(outputs(i-bit)));
            end

            row = size(bins, 1);
            for j=1:row
                col = length(bins(j,:));
                for k=1:col
                    if bins(j,k)~='-'
                        if k<=bit
                            fprintf(fid, 's_{%d}', bit-k);
                        else
                            fprintf(fid, '%s', char(inputs(k-bit)));
                        end
                    end
                    if bins(j,k)=='0'
                        fprintf(fid, '''');
                    end
                end
                if j~=row
                    fprintf(fid, '+');
                end
            end
            fprintf(fid, '$$\n');
        end
        fprintf(fid, '\n\n');
    end
    
    % Circuit
    if flag_ct
        fprintf(fid, 'The schematics is \n\n');
        fprintf(fid, '\\begin{center}\n\\begin{tikzpicture}[circuit logic US]\n');
        fprintf(fid, '\\draw (0,0) node (r) [shape=rectangle,draw,minimum height=2cm,minimum width=3cm,text width=2cm,align=center] {%d-bit state register};\n', bit);
        fprintf(fid, '\\draw (-3,0) node (clock) {clock};');
        fprintf(fid, '\\draw (clock) -- (r.west);');

        sep = 30/(bit+1);
        fprintf(fid, '\\draw (r) ++(left:11.54mm) -- ++($(left:3.46mm)+(down:2mm)$);\n');
        fprintf(fid, '\\draw (r) ++(left:11.54mm) -- ++($(left:3.46mm)+(up:2mm)$);\n');

        in_x=sep*(1:bit)/10-1.5;
        in_y=ones(1,bit);

        for i=1:bit
            fprintf(fid, '\\draw (r.west) ++(up:7.5mm) ++(right:%fmm) node {$s_%d$};\n', sep*(i), bit-i);
            fprintf(fid, '\\draw (r.west) ++(down:7.5mm) ++(right:%fmm) node {$n_%d$};\n', sep*(i), bit-i);
        end

        in_x=[in_x -1.5-0.5*(1:ni)];
        in_y=[in_y ones(1,ni)];

        for i=1:ni
            fprintf(fid, '\\draw (%f,%f) node {$%s$};\n', in_x(i+bit), in_y(i+bit)-0.25, char(inputs(i)));
        end

        andgate_num = 0;
        last_cross = zeros(2, bit+ni);

        for i=1:bit+no
            bins = minTruthtable(data(i,:), 'e');
            row = size(bins, 1);
            for j=1:row
                andgate_num = andgate_num + 1;
                col = length(bins(j,:));
                i_num = find(bins(j,:)~='-');
                if length(i_num)==1
                    if (bins(j,i_num)=='0')
                        fprintf(fid, '\\draw (r.north) ++(up:%fcm) ++(right:2cm) node (and%d) [not gate] {};\n', andgate_num, andgate_num);
                    else
                        fprintf(fid, '\\draw (r.north) ++(up:%fcm) ++(right:2cm) node (and%d) [buffer gate] {};\n', andgate_num, andgate_num);
                    end
                    fprintf(fid, '\\draw (%f,%f) |- (and%d.input) ;\n', in_x(i_num), in_y(i_num), andgate_num);
                else
                    a = [];
                    for k=1:col
                        if (bins(j,k)=='0')
                            a=[a,'i'];
                        else
                            a=[a,'n'];
                        end
                    end
                    fprintf(fid, '\\draw (r.north) ++(up:%fcm) ++(right:2cm) node (and%d) [and gate,inputs=%s] {};\n', andgate_num, andgate_num, a);
                    for k=1:col
                        if (bins(j,k)~='-')
                            fprintf(fid, '\\draw (%f,%f) |- (and%d.input %d) ;\n', in_x(k), in_y(k), andgate_num, k);
                        end
                    end
                end
                for k=1:col
                    if (bins(j,k)~='-')
                        if last_cross(1,k)~=0
                            if last_cross(2,k)>0
                                fprintf(fid, '\\draw (and%d.input %d) ;\n', last_cross(1,k), k);
                            else
                                fprintf(fid, '\\draw (and%d.input) ;\n', last_cross(1,k));
                            end
                            fprintf(fid, '\\pgfgetlastxy{\\x}{\\y};\n');
                            fprintf(fid, '\\filldraw (%f,\\y) circle [radius=0.5mm];\n', in_x(k));
                        end
                        last_cross(1,k)=andgate_num;
                        last_cross(2,k)=length(i_num);
                    end
                end
            end
            if (i<=bit)
                or_x = 5+(1/(bit-1))*(i-1);
            else
                or_x = 5.75;
            end
            if (row>1)
                a = char(110*ones(1,row));
                or_y = andgate_num-0.5*(row-1);
                fprintf(fid, '\\draw (r.north) ++(up:%fcm) ++(right:4cm) node (or%d) [or gate,inputs=%s] {};\n', or_y, i, a);
                b = (row+1)/2;
                c = 1/(ceil((row+1)/2));
                d = floor(abs((1:row)-b))+1-mod(row,2);
                for j=1:row
                    fprintf(fid, '\\draw (and%d.output) -- ++(right:%fcm) |- (or%d.input %d);\n', andgate_num-row+j, c*d(j), i, row+1-j);
                end
                or_y = or_y+1;
                fprintf(fid, '\\draw (or%d.output) -- (%f,%f);\n', i, or_x, or_y);
            else
                or_y = andgate_num+1;
                fprintf(fid, '\\draw (and%d.output) -- (%f,%f);\n', andgate_num, or_x, or_y);
            end
            if (i<=bit)
                fprintf(fid, '\\draw (%f,%f) -- (%f,%f) -| (%f,-1);\n', or_x, or_y, or_x, -1-0.5*i, in_x(i));
            else
                fprintf(fid, '\\draw (6,%f) node {$%s$};\n', or_y, char(outputs(i-bit)));
            end
        end

        fprintf(fid, '\\end{tikzpicture}\n\\end{center}\n');
    end
end

