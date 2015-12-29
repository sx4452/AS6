function ModifyData
InputFile = fopen('Test_Product_Info_2.csv');
%OutputFile = fopen('New_Product_Info_2.csv');
InputData = textscan(InputFile,'%s');
InputData = InputData{1,1};
InputData = char(InputData);
FileSize = size(InputData);
%NewData = zeros(FileSize(1),1);
for i = 1:FileSize(1)
    %tmpstr = InputData(i);
    %tmpstr = tmpstr{1};
    %NewData(i,1) = tmpstr;
    %tmpstr1 = tmpstr(1);
    if strcmp(InputData(i,1),'A') == 1
        %NewData(i,1) = strcat('1',tmpstr(2));
        InputData(i,1) = '1';
    end
    if strcmp(InputData(i,1),'B') == 1
        %NewData(i,1) = strcat('1',tmpstr(2));
        InputData(i,1) = '2';
    end
    if strcmp(InputData(i,1),'C') == 1
        %NewData(i,1) = strcat('1',tmpstr(2));
        InputData(i,1) = '3';
    end
    if strcmp(InputData(i,1),'D') == 1
        %NewData(i,1) = strcat('1',tmpstr(2));
        InputData(i,1) = '4';
    end
    if strcmp(InputData(i,1),'E') == 1
        %NewData(i,1) = strcat('1',tmpstr(2));
        InputData(i,1) = '5';
    end
%    fprintf(OutputFile,'%s\n',InputData(i,:));  
end
csvwrite('New_Test_Product_Info_2.csv', InputData);
fclose(InputFile);
%fclose(OutputFile);
disp('InputFile complete');
end