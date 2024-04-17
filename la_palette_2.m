 clc; % Efface la fenêtre de commande
clear all; % Supprime toutes les variables de l'espace de travail
close all; % Ferme toutes les figures ouvertes
% Création d'une matrice I de dimensions 256x256 où chaque élément de la colonne j est constant et égal à j.
% Cela signifie que dans l'image créée, la valeur des pixels augmentera de gauche à droite.
I = repmat(1:256, 256, 1);
% Application de la palette de niveau de gris et affichage de l'image I
figure;
imagesc(I);
colormap(gray);  % Applique une palette de niveau de gris
colorbar;
title('Image avec palette de niveaux de gris');

% Exploration de différentes palettes
figure;
subplot(1,3,1);
imagesc(I);
colormap(jet);  % Palette Jet
colorbar;
title('Palette Jet');

subplot(1,3,2);
imagesc(I);
colormap(hsv);  % Palette HSV
colorbar;
title('Palette HSV');

subplot(1,3,3);
imagesc(I);
colormap(hot);  % Palette Hot
colorbar;
title('Palette Hot');

% Définition d'une palette personnalisée
myColors = [linspace(0,1,256)', zeros(256,1), linspace(1,0,256)'];  % Dégradé personnalisé de rouge à bleu
colormap(myColors);
figure; imagesc(I); colorbar; title('Palette Personnalisée');
