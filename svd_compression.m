%
%BROOKLYN TANNER
%MATH 2331 (17340)
%SVD EXTRA CREDIT PROBLEM
%
%Comments are set below the lines of code


% display original picture for reference
A = imread('record.gif');
A = double(A); %this is necessary
figure,imagesc(A); colormap gray; title('Original');

[U, S, V] = svd(A);
N = 512; 
%Sets N to 512 in order to calculate Compression Rates for a given 'k'


akOne = U(:,1:1)*S(1:1,1:1)*V(:,1:1)';
% sets k to 1 for formula discussed in class
CR1 = (1*((2*N)+1))/(N*N); 
% calculate the compression rate where k = 1
CR1 = num2str(CR1); 
% parse variable CR1 to a string in order to concatenate with title
titleOne = ['k = 1; Compression Rate = ', CR1];
%creates a string for the image title
figure,imagesc(akOne); colormap gray; title(titleOne); 
%display image where k=1 and display string 'titleOne'


akTen = U(:,1:10)*S(1:10,1:10)*V(:,1:10)';
% sets k to 10 for formula discussed in class
CR10 = (10*((2*N)+1))/(N*N);
% calculate the compression rate where k = 10
CR10 = num2str(CR10);
% parse variable CR10 to a string in order to concatenate with title
titleTen = ['k = 10; Compression Rate = ', CR10];
%creates a string for the image title
figure,imagesc(akTen); colormap gray; title(titleTen);
%display image where k=10 and display string 'titleTen'


akFifty = U(:,1:50)*S(1:50,1:50)*V(:,1:50)';
% sets k to 50 for formula discussed in class
CR50 = (50*((2*N)+1))/(N*N);
% calculate the compression rate where k = 50
CR50 = num2str(CR50);
% parse variable CR50 to a string in order to concatenate with title
titleFifty = ['k = 50; Compression Rate = ', CR50];
%creates a string for the image title
figure,imagesc(akFifty); colormap gray; title(titleFifty);
%display image where k=50 and display string 'titleFifty'


akOneHundred = U(:,1:100)*S(1:100,1:100)*V(:,1:100)';
% sets k to 100 for formula discussed in class
CR100 = (100*((2*N)+1))/(N*N);
% calculate the compression rate where k = 100
CR100 = num2str(CR100);
% parse variable CR100 to a string in order to concatenate with title
titleOneHundred = ['k = 100; Compression Rate = ', CR100];
%creates a string for the image title
figure,imagesc(akOneHundred); colormap gray; title(titleOneHundred);
%display image where k=100 and display string 'titleOneHundred'


akTwoHundred = U(:,1:200)*S(1:200,1:200)*V(:,1:200)';
% sets k to 200 for formula discussed in class
CR200 = (200*((2*N)+1))/(N*N);
% calculate the compression rate where k = 200
CR200 = num2str(CR200);
% parse variable CR200 to a string in order to concatenate with title
titleTwoHundred = ['k = 200; Compression Rate = ', CR200];
%creates a string for the image title
figure,imagesc(akTwoHundred); colormap gray; title(titleTwoHundred);
%display image where k=200 and display string 'titleTwoHundred'

akTwoFiftyFive = U(:,1:255)*S(1:255,1:255)*V(:,1:255)';
% sets k to 255 for formula discussed in class
CR255 = (255*((2*N)+1))/(N*N);
% calculate the compression rate where k = 255
CR255 = num2str(CR255);
% parse variable CR255 to a string in order to concatenate with title
titleTwoFiftyFive = ['k = 255; Compression Rate = ', CR255];
%creates a string for the image title
figure,imagesc(akTwoFiftyFive); colormap gray; title(titleTwoFiftyFive);
%display image where k=255 and display string 'titleTwoFiftyFive'

