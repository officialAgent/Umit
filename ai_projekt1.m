l=[300 750;300 400; 400 400];
i=[450 750;450 400];
l2=[500 750;500 400; 600 400];
k=[1 1000;1 0;1000 1]; %kjkjjj
plot(l(:,1),l(:,2),'r'); hold on;
plot(i(:,1),i(:,2),'r'); hold on;
plot(l2(:,1),l2(:,2),'r'); hold on;
plot(k(:,1),k(:,2),'r'); hold on;

start = 100; finish = 900;
x = linspace(start,finish);hold on;%(0,25,50);
y = x;%x.^2;
p = plot(x,y,'-s');
p.MarkerSize = 5;
p.MarkerIndices = 1:20:length(y+1);hold  on;
