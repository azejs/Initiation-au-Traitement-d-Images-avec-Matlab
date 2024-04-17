clc; % Efface la fenêtre de commande
clear all; % Supprime toutes les variables de l'espace de travail
close all; % Ferme toutes les figures ouvertes
 
% Charger l'image couleur
imgCouleur = imread('images/RVB.jpg');
% Séparer les canaux de couleur
rouge = imgCouleur(:,:,1); % Canal rouge
vert = imgCouleur(:,:,2);  % Canal vert
bleu = imgCouleur(:,:,3);  % Canal bleu

% Créer des images monochromes pour chaque composante de couleur
imgRouge = cat(3, rouge, zeros(size(rouge)), zeros(size(rouge)));
imgVert = cat(3, zeros(size(vert)), vert, zeros(size(vert)));
imgBleu = cat(3, zeros(size(bleu)), zeros(size(bleu)), bleu);

% Afficher les images de chaque composante de couleur
figure;
subplot(1,3,1); imshow(imgRouge); title('Composante Rouge');
subplot(1,3,2); imshow(imgVert); title('Composante Verte');
subplot(1,3,3); imshow(imgBleu); title('Composante Bleue');

% Convertir l'image en niveaux de gris avec rgb2gray
imgNiveauxGris = rgb2gray(imgCouleur);

% Afficher l'image en niveaux de gris
figure; imshow(imgNiveauxGris); title('Image en Niveaux de Gris');
