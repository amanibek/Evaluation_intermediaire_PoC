function [] = PlotPoint3D(point3D, titre)

figure;

% représentation des points
scatter3(point3D(:,1), point3D(:,2), point3D(:,3), 5 , point3D(:,3),'.')

% mise en forme de la figure
set(gcf,'color','[0 0 0]'); 
set(gca,'color','[0 0 0]','XColor','w','ZColor','w','YColor','w')
axis equal
title(titre,'color','w');
colorbar('color','w')
xlabel('X[mm]','color','w');
ylabel('Y[mm]','color','w');
zlabel('Z[mm]','color','w');
hold on

end

