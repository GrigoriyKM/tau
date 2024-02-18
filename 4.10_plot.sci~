step_outs_mu = [step_out11, step_out12, step_out13, step_out14]; // K = 1.5
step_outs = step_outs_mu;

plot2d(step_out_diff.time, step_out_diff.values, 1);
for i = 1:length(step_outs)
    plot2d(step_outs(i).time, step_outs(i).values, i + 1);
end
legends(['true'; 'mu=0.15';'mu=0.3';'mu=0.6';'mu=1.2'],[1 2 3 4 5],opt="lr");
title "K = 1.5";
title fontsize 5;
xlabel "t [сек]";
xlabel fontsize 5;
ylabel "y(t)";
ylabel fontsize 5;
xgrid;
