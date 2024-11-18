clc;
clear all;
close all;

% Read the image
rgb = imread('F2.jpg');

% Convert the image to grayscale
gray_image = rgb2gray(rgb);

% Display the grayscale image
figure(1);
imshow(gray_image);
title('Grayscale Image');

%% Detect leukemia cells
% Define a threshold value for leukemia detection
threshold_value = 100; % Example threshold
binary_image = gray_image >= threshold_value;

% Invert the binary image to make the circles black and the background white
inverted_image = ~binary_image;

% Fill the black areas in the inverted binary image
filled_image = imfill(inverted_image, 'holes');

% Apply morphological closing to fill large black spaces between components
se = strel('disk', 5); % Create a disk-shaped structuring element
closed_image = imclose(filled_image, se); % Perform the closing operation

% Remove small white patches
min_patch_size = 80; % Minimum size of patches to keep (in pixels)
cleaned_image = bwareaopen(closed_image, min_patch_size);

% Count the number of connected components (leukemia cells)
[labeled_image, num_cancer_cells] = bwlabel(cleaned_image, 4); % 4-connectivity

% Display the count of leukemia cells
disp('Number of leukemia cells detected:');
disp(num_cancer_cells);

%% Count all gray areas
% Define thresholds for gray areas
gray_min = 100; % Minimum value for gray
gray_max = 200; % Maximum value for gray

% Create a binary mask for gray areas
gray_mask = gray_image >= gray_min & gray_image <= gray_max;

% Fill holes in the mask
filled_mask = imfill(gray_mask, 'holes');

% Remove small white patches (optional)
min_patch_size_gray = 100; % Minimum size of patches to keep (in pixels)
cleaned_mask = bwareaopen(filled_mask, min_patch_size_gray);

% Count the number of connected components (gray areas)
[labeled_gray_image, num_gray_areas] = bwlabel(cleaned_mask, 4); % 4-connectivity

% Display the count of gray areas
disp('Number of gray areas detected:');
disp(num_gray_areas);

%% Calculate the cancer percentage
if num_gray_areas > 0 % Avoid division by zero
    cancer_percentage = (num_cancer_cells / num_gray_areas) * 100;

    % Display the cancer percentage and stage if it's in the initial stage
    disp(['Cancer percentage is: ', num2str(cancer_percentage), '%']);
    if cancer_percentage < 25
        disp('Initial stage');
    else
        disp('Advanced stage');
    end
else
    disp('No gray areas detected, cannot calculate cancer percentage.');
end

% Optional: Display labeled images
figure(2);
imshow(label2rgb(labeled_image));
title('Labeled Leukemia Cells');

figure(3);
imshow(label2rgb(labeled_gray_image));
title('Labeled Gray Areas');
