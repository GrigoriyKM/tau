impulse_outs_k = [impulse_out21, impulse_out22, impulse_out23, impulse_out24]; // T = 0.8, d = 0.3
impulse_outs_T = [impulse_out12, impulse_out22, impulse_out32, impulse_out42]; // k = 1.5, d = 0.3
impulse_outs = impulse_outs_T;

for i = 1:length(impulse_outs)
    plot2d(impulse_outs(i).time, impulse_outs(i).values, i);
end
if (impulse_outs == impulse_outs_k) then 
    legends(['k=0.75';'k=1.5';'k=3';'k=6'],[1 2 3 4],opt="lr");
    title "T=0.8";
elseif (impulse_outs == impulse_outs_T) then
    legends(['T=0.4';'T=0.8';'T=1.6'; 'T=3.2'],[1 2 3 4],opt="lr");
    title "K = 1.5";
end
title fontsize 5;
xlabel "t [сек]";
xlabel fontsize 5;
ylabel "y(t)";
ylabel fontsize 5;
xgrid;
