 % Nettoyage initial pour un environnement de travail clair
clc;        % Efface la fen�tre de commande pour une lecture facile
clear all;  % Supprime toutes les variables pour �viter les conflits de donn�es
close all;  % Ferme toutes les figures ouvertes pour commencer avec un espace de travail propre

% Charger l'image 'cameraman.tif' du dossier 'images'
imgCameraman = imread('images/cameraman.tif');

% D�finir les diff�rents niveaux de quantification � �valuer
niveauxDeGris = [128, 64, 32, 16, 8, 4, 2];

% Calculer le nombre de lignes et de colonnes pour les subplots
nbNiveaux = length(niveauxDeGris);
nbColonnes = ceil(sqrt(nbNiveaux)); % Pour une grille � peu pr�s carr�e
nbLignes = ceil(nbNiveaux / nbColonnes);

% Cr�ation d'une nouvelle figure pour afficher tous les subplots
figure;

% Boucle sur chaque niveau de quantification
for i = 1:nbNiveaux
    % Conversion de l'image en niveaux de gris en une image index�e avec le nombre sp�cifi� de niveaux de gris
    [imgQuant, map] = gray2ind(imgCameraman, niveauxDeGris(i));
    
    % Conversion de l'image index�e retour � une image en niveaux de gris avec la quantification sp�cifi�e
    imgQuant = ind2gray(imgQuant, map);
    
    % Afficher l'image quantifi�e dans un subplot
    subplot(nbLignes, nbColonnes, i);
    imshow(imgQuant, map);
    title(['Quantification: ', num2str(niveauxDeGris(i)), ' niveaux']);
end

% Ajustement des subplots pour �viter le chevauchement des titres et des axes
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]); % Maximise la figure pour utiliser tout l'�cran
