 clc; % Efface la fenêtre de commande
clear all; % Supprime toutes les variables de l'espace de travail
close all; % Ferme toutes les figures ouvertes
% Création d'une matrice I de dimensions 256x256 où chaque élément de la colonne j est constant et égal à j.
% Cela signifie que dans l'image créée, la valeur des pixels augmentera de gauche à droite.
I = repmat(1:256, 256, 1);

% Affichage de la matrice I utilisant la commande 'image'
figure; % Crée une nouvelle fenêtre graphique
subplot(1,2,1); % Divise la fenêtre graphique en une grille 1x2 et sélectionne la 1ère section pour le prochain graphique
image(I); % Affiche les données de la matrice I comme une image
title('Affichage avec "image"'); % Ajoute un titre au graphique
% La commande 'image' mappe directement les valeurs de la matrice aux couleurs disponibles dans la palette courante.

% Affichage de la matrice I utilisant la commande 'imagesc'
subplot(1,2,2); % Sélectionne la 2ème section de la grille pour le prochain graphique
imagesc(I); % Comme 'image', mais normalise les valeurs pour utiliser toute la gamme de couleurs de la palette
colorbar; % Ajoute une barre de couleur à côté de l'image, montrant comment les valeurs de données sont mappées aux couleurs
title('Affichage avec "imagesc"'); % Ajoute un titre au graphique
% 'imagesc' est utile pour visualiser des détails dans des images dont les valeurs de pixel varient sur une large gamme.
