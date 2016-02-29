clear all; close all; clc

I1 = rgb2gray(imread('35.JPG'));
I2 = rgb2gray(imread('36.JPG'));
[idxPairs, matchMetric] = matchFeatures(I1,I2);
points1 = detectHarrisFeatures(I1);
points2 = detectHarrisFeatures(I2);
[features1, valid_points1] = extractFeatures(I1, points1);
[features2, valid_points2] = extractFeatures(I2, points2);
[idxPairs, matchMetric] = matchFeatures(features1,features2);
matchedPoints1 = valid_points1(idxPairs(:, 1), :);
matchedPoints2 = valid_points2(idxPairs(:, 2), :);
figure; showMatchedFeatures(I1, I2, matchedPoints1, matchedPoints2);