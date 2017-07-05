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
fprintf(fid, '\begin{center}\\\begin{tikzpicture}')


