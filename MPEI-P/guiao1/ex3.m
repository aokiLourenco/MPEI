experiencias= rand(15,10000);

lancamentos= experiencias>0.5;
sucessos= sum(lancamentos) == 6;
probSimulacao3= sum(sucessos)/10000;