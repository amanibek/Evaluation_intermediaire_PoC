%% Initialisation
clear all;
close all;
clc;

%Ranger les fonctions dans un repertoire
addpath('AliconaDataHandling');
addpath('Mesure_1');

%% Etape 1: Selectioner le fichier, lecturer les infos
DATA = AliconaReader();

%Nettoyer des points aberrants, mettre sous forme N X 3, faire transformation corp rigide(facultative)
point3D = AliconaData2Pointset(DATA);

%Conversion d'unite en mm
point3Dmm =  point3D*1000;

%Affichage points 3D(points sous forme N X 3, titre)
PlotPoint3D (point3Dmm, 'Representation nuage de points initials');

