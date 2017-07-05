fid = fopen('p6.txt', 'r');
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

for i=1:bit+no
    bins = minTruthtable(data(i,:), 'e');
end

fclose(fid);

fid = fopen('p6.tex', 'w');
fprintf(fid, '\\begin{center}\n\\begin{tikzpicture}[circuit logic US]\n');
fprintf(fid, '\\draw (0,0) node (r) [shape=rectangle,draw,minimum height=2cm,minimum width=3cm,text width=2cm,align=center] {%d-bit state register};\n', bit);
sep = 30/(bit+1);
fprintf(fid, '\\draw (r) ++(left:11.54mm) -- ++($(left:3.46mm)+(down:2mm)$);\n');
fprintf(fid, '\\draw (r) ++(left:11.54mm) -- ++($(left:3.46mm)+(up:2mm)$);\n');
for i=1:bit
    fprintf(fid, '\\draw (r.west) ++(up:7.5mm) ++(right:%fmm) node {$n_%d$};\n', sep*(i), bit-i);
    fprintf(fid, '\\draw (r.west) ++(down:7.5mm) ++(right:%fmm) node {$s_%d$};\n', sep*(i), bit-i);
end

fprintf(fid, '\\end{tikzpicture}\n\\end{center}\n');


