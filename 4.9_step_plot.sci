step_outs_mu = [step_out11, step_out12, step_out13, step_out14]; // K = 1.5
step_outs_k = [step_out21, step_out22, step_out23, step_out24]; // mu = 0.3
step_outs = step_outs_mu

for i = 1:length(step_outs)
    plot2d(step_outs(i).time, step_outs(i).values, i);
end
if (step_outs == step_outs_mu) then 
    legends(['mu=0.15';'mu=0.3';'mu=0.6';'mu=1.2'],[1 2 3 4],opt="lr");
    title "K = 1.5";
elseif (step_outs == step_outs_k) then
    legends(['K=0.75';'K=1.5';'K=3';'K=6'],[1 2 3 4],opt="lr");
    title "mu = 0.3";
end
title fontsize 5;
xlabel "t [сек]";
xlabel fontsize 5;
ylabel "y(t)";
ylabel fontsize 5;
xgrid;
