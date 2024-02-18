step_outs_k = [step_outk1, step_outk2]; // T = 0.8, d = 0.3
step_outs_d = [step_outd1, step_outd2, step_outd3, step_outd4]; // k = 1.5, T = 0.8
step_outs_T = [step_outT1, step_outT2, step_outT3]; // k = 1.5, d = 0.3
step_outs = step_outs_T

for i = 1:length(step_outs)
    plot2d(step_outs(i).time, step_outs(i).values, i);
end
if (step_outs == step_outs_d) then 
    legends(['d=0.3';'d=0.6';'d=1.2';'d=2.4'],[1 2 3 4],opt="lr");
    title "K = 1.5 T=0.8";
elseif (step_outs == step_outs_k) then
    legends(['K=0.75';'K=1.5'],[1 2],opt="lr");
    title "T = 0.8 d = 0.3";
elseif (step_outs == step_outs_T) then
    legends(['T=0.4';'T=0.8';'T=1.6';],[1 2 3],opt="lr");
    title "K = 1.5 d = 0.3";
end
title fontsize 5;
xlabel "t [сек]";
xlabel fontsize 5;
ylabel "y(t)";
ylabel fontsize 5;
xgrid;
