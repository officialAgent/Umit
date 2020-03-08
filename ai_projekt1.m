l=[300 750;300 400; 400 400];
i=[450 750;450 400];
l2=[500 750;500 400; 600 400];
k=[1 1000;1 0;1000 1]; %kjkjjj
plot(l(:,1),l(:,2),'r'); hold on;
plot(i(:,1),i(:,2),'r'); hold on;
plot(l2(:,1),l2(:,2),'r'); hold on;
plot(k(:,1),k(:,2),'r'); hold on;
A=[0 0];
a = plot(0,0,'-s');
a.MarkerSize = 5;
U=[1000 1000];
u = plot(1000,1000,'-s');
u.MarkerSize = 5;
Space=[0 0; 1000 1000];
points=[A(1) A(2); 100 100; 200 100; 420 300; 500 300; 800 600;U(1) U(2) ];
plot(B(:, 1), B(:, 2)); hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    popsize=30;
    Pop=genrpop(popsize,Space);
    graph=zeros(1,750);

for n= 1:750
Fit=FN(Pop);% fitness funkcia 
best1=selbest(Pop,Fit,1); % vyber najlepsich jedinec
graph(n)=(testfn3(best1));
plot(best1); hold on;
best=selbest(Pop,Fit,[1 1]); % vyber najlepsich jedincov
work=seltourn(Pop,Fit,28); % turnajovy vyber 30 jednice 30-6=24
work=crossov(work,1,0); % krizenie utolos szam azt a dja meg h random vagy pedig szomszedokat valtoztat
work=mutx(work,0.1,Space); % globalna mutacia
Amp=[1 1 1 1 1 1 1 1 1 1];
work=muta(work,0.1,Amp,Space); % lokalna mutacia
Pop=[best;work];

end



   % plot(graph); hold on;
%%%points = [2 5; 6 9; 7 8; 9 10; 6 10];


function FN(points)



Diff   = [diff(points, 1); points(end, :)-points(1, :)];
Dist   = sqrt(sum(Diff .* Diff, 2));

end

