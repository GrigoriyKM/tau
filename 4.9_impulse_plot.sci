impulse_outs_mu = [impulse_out11, impulse_out12, impulse_out13, impulse_out14]; // K = 1.5
impulse_outs_k = [impulse_out21, impulse_out22, impulse_out23, impulse_out24]; // mu = 0.3
impulse_outs = impulse_outs_mu

for i = 1:length(impulse_outs)
    plot2d(impulse_outs(i).time, impulse_outs(i).values, i);
end
if (impulse_outs == impulse_outs_mu) then 
    legends(['mu=0.15';'mu=0.3';'mu=0.6';'mu=1.2'],[1 2 3 4],opt="lr");
    title "K = 1.5";
elseif (impulse_outs == impulse_outs_k) then
    legends(['K=0.75';'K=1.5';'K=3';'K=6'],[1 2 3 4],opt="lr");
    title "mu = 0.3";
end
title fontsize 5;
xlabel "t [сек]";
xlabel fontsize 5;
ylabel "y(t)";
ylabel fontsize 5;
xgrid;
