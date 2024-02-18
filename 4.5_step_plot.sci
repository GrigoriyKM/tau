step_outs_k = [step_out21, step_out22, step_out23, step_out24]; // T = 0.8, d = 0.3
step_outs_T = [step_out12, step_out22, step_out32, step_out42]; // k = 1.5, d = 0.3
step_outs = step_outs_k;

for i = 1:length(step_outs)
    plot2d(step_outs(i).time, step_outs(i).values, i);
end
if (step_outs == step_outs_k) then 
    legends(['k=0.75';'k=1.5';'k=3';'k=6'],[1 2 3 4],opt="lr");
    title "T=0.8";
elseif (step_outs == step_outs_T) then
    legends(['T=0.4';'T=0.8';'T=1.6'; 'T=3.2'],[1 2 3 4],opt="lr");
    title "K = 1.5";
end
title fontsize 5;
xlabel "t [сек]";
xlabel fontsize 5;
ylabel "y(t)";
ylabel fontsize 5;
xgrid;
