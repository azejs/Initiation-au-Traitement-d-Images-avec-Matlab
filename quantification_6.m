 % Nettoyage initial pour un environnement de travail clair
clc;        % Efface la fenêtre de commande pour une lecture facile
clear all;  % Supprime toutes les variables pour éviter les conflits de données
close all;  % Ferme toutes les figures ouvertes pour commencer avec un espace de travail propre

% Charger l'image 'cameraman.tif' du dossier 'images'
imgCameraman = imread('images/cameraman.tif');

% Définir les différents niveaux de quantification à évaluer
niveauxDeGris = [128, 64, 32, 16, 8, 4, 2];

% Calculer le nombre de lignes et de colonnes pour les subplots
nbNiveaux = length(niveauxDeGris);
nbColonnes = ceil(sqrt(nbNiveaux)); % Pour une grille à peu près carrée
nbLignes = ceil(nbNiveaux / nbColonnes);

% Création d'une nouvelle figure pour afficher tous les subplots
figure;

% Boucle sur chaque niveau de quantification
for i = 1:nbNiveaux
    % Conversion de l'image en niveaux de gris en une image indexée avec le nombre spécifié de niveaux de gris
    [imgQuant, map] = gray2ind(imgCameraman, niveauxDeGris(i));
    
    % Conversion de l'image indexée retour à une image en niveaux de gris avec la quantification spécifiée
    imgQuant = ind2gray(imgQuant, map);
    
    % Afficher l'image quantifiée dans un subplot
    subplot(nbLignes, nbColonnes, i);
    imshow(imgQuant, map);
    title(['Quantification: ', num2str(niveauxDeGris(i)), ' niveaux']);
end

% Ajustement des subplots pour éviter le chevauchement des titres et des axes
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]); % Maximise la figure pour utiliser tout l'écran
