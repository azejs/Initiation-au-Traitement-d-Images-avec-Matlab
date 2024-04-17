clc; % Efface la fenêtre de commande
clear all; % Supprime toutes les variables de l'espace de travail
close all; % Ferme toutes les figures ouvertes
% Lecture de l'image cameraman.bmp située dans le dossier images
imgCameraman = imread('images/cameraman.bmp');

% Application de différentes rotations à l'image et stockage des résultats
imgRotNeg45 = imrotate(imgCameraman, -45); % Rotation de -45 degrés
imgRot90 = imrotate(imgCameraman, 90);     % Rotation de 90 degrés
imgRot45 = imrotate(imgCameraman, 45);     % Rotation de 45 degrés
imgRotNeg90 = imrotate(imgCameraman, -90); % Rotation de -90 degrés

% Affichage des images tournées sur une même figure
figure;
subplot(2,2,1); imshow(imgRotNeg45); title('Rotation -45°');
subplot(2,2,2); imshow(imgRot90);    title('Rotation 90°');
subplot(2,2,3); imshow(imgRot45);    title('Rotation 45°');
subplot(2,2,4); imshow(imgRotNeg90); title('Rotation -90°');
% On utilise subplot pour organiser plusieurs graphiques dans une fenêtre

% Redimensionnement de l'image avec différents facteurs d'échelle
imgResize05 = imresize(imgCameraman, 0.5); % Facteur d'échelle de 0.5
imgResize01 = imresize(imgCameraman, 0.1); % Facteur d'échelle de 0.1
imgResize15 = imresize(imgCameraman, 1.5); % Facteur d'échelle de 1.5
imgResize25 = imresize(imgCameraman, 2.5); % Facteur d'échelle de 2.5

% Affichage des images redimensionnées sur une même figure
figure;
subplot(2,2,1); imshow(imgResize05); title('Echelle 0.5');
subplot(2,2,2); imshow(imgResize01); title('Echelle 0.1');
subplot(2,2,3); imshow(imgResize15); title('Echelle 1.5');
subplot(2,2,4); imshow(imgResize25); title('Echelle 2.5');
% Encore une fois, subplot est utilisé pour une présentation soignée
