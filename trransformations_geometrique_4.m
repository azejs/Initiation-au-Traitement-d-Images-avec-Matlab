clc; % Efface la fen�tre de commande
clear all; % Supprime toutes les variables de l'espace de travail
close all; % Ferme toutes les figures ouvertes
% Lecture de l'image cameraman.bmp situ�e dans le dossier images
imgCameraman = imread('images/cameraman.bmp');

% Application de diff�rentes rotations � l'image et stockage des r�sultats
imgRotNeg45 = imrotate(imgCameraman, -45); % Rotation de -45 degr�s
imgRot90 = imrotate(imgCameraman, 90);     % Rotation de 90 degr�s
imgRot45 = imrotate(imgCameraman, 45);     % Rotation de 45 degr�s
imgRotNeg90 = imrotate(imgCameraman, -90); % Rotation de -90 degr�s

% Affichage des images tourn�es sur une m�me figure
figure;
subplot(2,2,1); imshow(imgRotNeg45); title('Rotation -45�');
subplot(2,2,2); imshow(imgRot90);    title('Rotation 90�');
subplot(2,2,3); imshow(imgRot45);    title('Rotation 45�');
subplot(2,2,4); imshow(imgRotNeg90); title('Rotation -90�');
% On utilise subplot pour organiser plusieurs graphiques dans une fen�tre

% Redimensionnement de l'image avec diff�rents facteurs d'�chelle
imgResize05 = imresize(imgCameraman, 0.5); % Facteur d'�chelle de 0.5
imgResize01 = imresize(imgCameraman, 0.1); % Facteur d'�chelle de 0.1
imgResize15 = imresize(imgCameraman, 1.5); % Facteur d'�chelle de 1.5
imgResize25 = imresize(imgCameraman, 2.5); % Facteur d'�chelle de 2.5

% Affichage des images redimensionn�es sur une m�me figure
figure;
subplot(2,2,1); imshow(imgResize05); title('Echelle 0.5');
subplot(2,2,2); imshow(imgResize01); title('Echelle 0.1');
subplot(2,2,3); imshow(imgResize15); title('Echelle 1.5');
subplot(2,2,4); imshow(imgResize25); title('Echelle 2.5');
% Encore une fois, subplot est utilis� pour une pr�sentation soign�e
