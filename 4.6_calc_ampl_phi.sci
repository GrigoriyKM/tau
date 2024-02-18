sin_ins = [sin_in01, sin_in1, sin_in5, sin_in10, sin_in20];
sin_outs = [sin_out01, sin_out1, sin_out5, sin_out10, sin_out20];
ampl_list = [];
phi_list = [];

for i = 1:length(sin_ins)
    peaks = peak_detect(sin_ins(i).values');
    neg_peaks = peak_detect(sin_ins(i).values' * -1);
    out_peaks = peak_detect(sin_outs(i).values'); 
    out_neg_peaks = peak_detect(sin_outs(i).values' * -1);
    Ampl = (abs(sin_outs(i).values(out_peaks($))) + abs(sin_outs(i).values(out_neg_peaks($)))) / (abs(sin_ins(i).values(peaks($))) + abs(sin_ins(i).values(neg_peaks($))));
    disp([sin_outs(i).values(out_peaks($)), sin_outs(i).values(out_neg_peaks($)), sin_ins(i).values(peaks($)), sin_ins(i).values(neg_peaks($)), Ampl])
    L1 = abs(sin_ins(i).time(peaks($)) - sin_ins(i).time(neg_peaks($))); 
    L2 = abs(sin_outs(i).time(out_peaks($)) - sin_ins(i).time(peaks($))); 
    phi = -%pi * (L2/L1);
    ampl_list($+1) = Ampl;
    phi_list($+1) = phi;
end
