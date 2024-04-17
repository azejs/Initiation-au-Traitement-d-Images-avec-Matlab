 clc; % Efface la fen�tre de commande
clear all; % Supprime toutes les variables de l'espace de travail
close all; % Ferme toutes les figures ouvertes
% Cr�ation d'une matrice I de dimensions 256x256 o� chaque �l�ment de la colonne j est constant et �gal � j.
% Cela signifie que dans l'image cr��e, la valeur des pixels augmentera de gauche � droite.
I = repmat(1:256, 256, 1);

% Affichage de la matrice I utilisant la commande 'image'
figure; % Cr�e une nouvelle fen�tre graphique
subplot(1,2,1); % Divise la fen�tre graphique en une grille 1x2 et s�lectionne la 1�re section pour le prochain graphique
image(I); % Affiche les donn�es de la matrice I comme une image
title('Affichage avec "image"'); % Ajoute un titre au graphique
% La commande 'image' mappe directement les valeurs de la matrice aux couleurs disponibles dans la palette courante.

% Affichage de la matrice I utilisant la commande 'imagesc'
subplot(1,2,2); % S�lectionne la 2�me section de la grille pour le prochain graphique
imagesc(I); % Comme 'image', mais normalise les valeurs pour utiliser toute la gamme de couleurs de la palette
colorbar; % Ajoute une barre de couleur � c�t� de l'image, montrant comment les valeurs de donn�es sont mapp�es aux couleurs
title('Affichage avec "imagesc"'); % Ajoute un titre au graphique
% 'imagesc' est utile pour visualiser des d�tails dans des images dont les valeurs de pixel varient sur une large gamme.
