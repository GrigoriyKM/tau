impulse_outs_k = [impulse_outk1, impulse_outk2]; // T = 0.8, d = 0.3
impulse_outs_d = [impulse_outd1, impulse_outd2, impulse_outd3, impulse_outd4]; // k = 1.5, T = 0.8
impulse_outs_T = [impulse_outT1, impulse_outT2, impulse_outT3]; // k = 1.5, d = 0.3
impulse_outs = impulse_outs_k

for i = 1:length(impulse_outs)
    plot2d(impulse_outs(i).time, impulse_outs(i).values, i);
end
if (impulse_outs == impulse_outs_d) then 
    legends(['d=0.3';'d=0.6';'d=1.2';'d=2.4'],[1 2 3 4],opt="lr");
    title "K = 1.5 T=0.8";
elseif (impulse_outs == impulse_outs_k) then
    legends(['K=0.75';'K=1.5'],[1 2],opt="lr");
    title "T = 0.8 d = 0.3";
elseif (impulse_outs == impulse_outs_T) then
    legends(['T=0.4';'T=0.8';'T=1.6';],[1 2 3],opt="lr");
    title "K = 1.5 d = 0.3";
end
title fontsize 5;
xlabel "t [сек]";
xlabel fontsize 5;
ylabel "y(t)";
ylabel fontsize 5;
xgrid;
