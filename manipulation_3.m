clc; % Efface la fenêtre de commande
clear all; % Supprime toutes les variables de l'espace de travail
close all; % Ferme toutes les figures ouvertes
%1. Informations sur les Images
info1 = imfinfo('images/lena.bmp');
info2 = imfinfo('images/lena.tif');
info3 = imfinfo('images/cameraman.bmp');
info4 = imfinfo('images/cameraman.tif');
%2. Formats de Fichiers Images Supportés par Matlab
formatsSupportes = imformats;
%3. Commandes Matlab pour la Manipulation d'Images
imgCameraman = imread('images/cameraman.tif');
ligne35 = imgCameraman(35, :); % Lecture de la ligne 35
colonne185 = imgCameraman(:, 185); % Lecture de la colonne 185
imwrite(imgCameraman, 'images/cameraman_sauvegardee.tif'); % Sauvegarde de l'image modifiée

%4 Affichage des Images avec subplot
figure; % Création d'une nouvelle figure pour l'affichage

% Affichage de l'image entière
subplot(1,3,1);
imshow(imgCameraman);
title('Cameraman.tif');

% Affichage de la ligne 35
subplot(1,3,2);
plot(ligne35);
title('Ligne 35 de Cameraman.tif');

% Affichage de la colonne 185
subplot(1,3,3);
plot(colonne185);
title('Colonne 185 de Cameraman.tif');

