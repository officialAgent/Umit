space= [-500 -500 -500 -500 -500 -500 -500 -500 -500 -500
        500 500 500 500 500 500 500 500 500 500 ];
    popsize=30;
    Pop=genrpop(popsize,space);
    graph=zeros(1,750);

for n= 1:750
Fit=testfn3(Pop);% fitness funkcia 
best1=selbest(Pop,Fit,1); % vyber najlepsich jedinec
graph(n)=(testfn3(best1));
best=selbest(Pop,Fit,[1 1]); % vyber najlepsich jedincov
work=seltourn(Pop,Fit,28); % turnajovy vyber 30 jednice 30-6=24
work=crossov(work,1,0); % krizenie utolos szam azt a dja meg h random vagy pedig szomszedokat valtoztat
work=mutx(work,0.1,space); % globalna mutacia
Amp=[1 1 1 1 1 1 1 1 1 1];
work=muta(work,0.1,Amp,space); % lokalna mutacia
Pop=[best;work];

end
    best1
    plot(graph); hold on;
