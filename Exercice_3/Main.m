% On cherche a représenter l'influence d'un défaut sur la longueur d3

clear all
close all
clc

%% --------
% Mise en place du MGD et du MGD avec défaut

% déclaration des paramètres
syms theta_1 theta_2 r3 theta_4 % paramètres de l'espace articulaire
syms d2 d3                      % paramètres géométriques

% déclaration des matrices homogènes
T01 = % A COMPLETER
T12 = % A COMPLETER
T23 = % A COMPLETER
T34 = % A COMPLETER

% écriture du MGD en position - dimension (2x1) 
% On ne garde que les composantes X et Y
MGD = % A COMPLETER

% ecriture du MGD avec defaut en position - dimension (2x1) 
% On ne garde que les composantes X et Y
syms def_d2 def_d3
MGD_def = % A COMPLETER


%% --------------
% Cas d'application

% fixe les parametres suivants :

% paramètres géométriques et articulaires fixés
cstGeo = [d2 d3 r3 theta_4]
cstGeoVal = [325 275 0 0]

% défauts fixés 
defaut = [def_d2 def_d3]; 
defautVal = [0 1]; %mm

% MGD et MGD avec défauts substitués
MGD_geo =     % A COMPLETER
MGD_def_geo = % A COMPLETER

% influence d'un défaut 
MGD_MatlabFunction = matlabFunction(MGD_geo,"Vars",[theta_1 theta_2])
influDef_MatlabFunction = matlabFunction(MGD_def_geo-MGD_geo,"Vars",[theta_1 theta_2])


%% ------------
% visualisation de l'influence d'un défaut géométrique dans l'espace des tâches 

% création d'une grille articulaire (ndgrid) 
% theta_1 et theta_2 varie entre 0 et pi avec un pas de 0.1 rad
[t1,t2] =     % A COMPLETER 
t1reshape =   % A COMPLETER
t2reshape =   % A COMPLETER

% calul des positions dans l'espace des tâches
XYZ = MGD_MatlabFunction() % A COMPLETER
XYZreshape =               % A COMPLETER

% calcul de l'influence du défaut d3 
dXYZ = influDef_MatlabFunction() % A COMPLETER
dXYZreshape =                    % A COMPLETER 

% représentation de l'influence du défaut dans l'espace des tâches
figure('Color',[1 1 1])
quiver() % A COMPLETER
xlabel('x [mm]')
ylabel('y [mm]')
axis equal
title('direction des défauts')



