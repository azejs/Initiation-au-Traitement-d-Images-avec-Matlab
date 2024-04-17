 clc; % Efface la fen�tre de commande
clear all; % Supprime toutes les variables de l'espace de travail
close all; % Ferme toutes les figures ouvertes
% Cr�ation d'une matrice I de dimensions 256x256 o� chaque �l�ment de la colonne j est constant et �gal � j.
% Cela signifie que dans l'image cr��e, la valeur des pixels augmentera de gauche � droite.
I = repmat(1:256, 256, 1);
% Application de la palette de niveau de gris et affichage de l'image I
figure;
imagesc(I);
colormap(gray);  % Applique une palette de niveau de gris
colorbar;
title('Image avec palette de niveaux de gris');

% Exploration de diff�rentes palettes
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

% D�finition d'une palette personnalis�e
myColors = [linspace(0,1,256)', zeros(256,1), linspace(1,0,256)'];  % D�grad� personnalis� de rouge � bleu
colormap(myColors);
figure; imagesc(I); colorbar; title('Palette Personnalis�e');
