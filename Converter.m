% MATLAB Script to convert various image and video files to JPEG and MP4
% Ensure ImageMagick and FFmpeg are installed and accessible via the system path

% Define the input directory (current directory)
inputDir = pwd;

% Function to convert images to JPEG
function convertImagesToJPG(inputDir)
    imageFiles = dir(fullfile(inputDir, '*.*'));
    imageExtensions = {'.heic', '.png', '.bmp', '.tiff', '.tif', '.gif'};
    
    for k = 1:length(imageFiles)
        [~, name, ext] = fileparts(imageFiles(k).name);
        if ismember(lower(ext), imageExtensions)
            inputFile = fullfile(inputDir, imageFiles(k).name);
            outputFile = fullfile(inputDir, [name, '.jpg']);
            % Use ImageMagick to convert various image formats to JPG
            system(sprintf('magick convert "%s" "%s"', inputFile, outputFile));
        end
    end
end

% Function to convert videos to MP4
function convertVideosToMP4(inputDir)
    videoFiles = dir(fullfile(inputDir, '*.*'));
    videoExtensions = {'.hevc', '.mov', '.avi', '.mkv', '.wmv', '.flv', '.webm'};
    
    for k = 1:length(videoFiles)
        [~, name, ext] = fileparts(videoFiles(k).name);
        if ismember(lower(ext), videoExtensions)
            inputFile = fullfile(inputDir, videoFiles(k).name);
            outputFile = fullfile(inputDir, [name, '.mp4']);
            % Use FFmpeg to convert various video formats to MP4
            system(sprintf('ffmpeg -i "%s" -c:v libx264 "%s"', inputFile, outputFile));
        end
    end
end

% Function to exclude JPEG, JPG, and MP4 files
function excludeConvertedFiles(inputDir)
    files = dir(fullfile(inputDir, '*.*'));
    for k = 1:length(files)
        [~, ~, ext] = fileparts(files(k).name);
        if ismember(lower(ext), {'.jpg', '.jpeg', '.mp4'})
            continue;
        end
        % Convert images to JPEG
        convertImagesToJPG(inputDir);
        % Convert videos to MP4
        convertVideosToMP4(inputDir);
    end
end

% Run the conversion process excluding already converted files
excludeConvertedFiles(inputDir);

disp('Conversion complete.');
