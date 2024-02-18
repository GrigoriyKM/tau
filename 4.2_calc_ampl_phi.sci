sin_ins = [sinin01, sinin1, sinin5, sinin10, sinin20];
sin_outs = [sinout01, sinout1, sinout5, sinout10, sinout20];
ampl_list = [];
phi_list = [];
for i = 1:length(sin_ins)
    peaks = peak_detect(sin_ins(i).values');
    neg_peaks = peak_detect(sin_ins(i).values' * -1);
    out_peaks = peak_detect(sin_outs(i).values'); 
    out_neg_peaks = peak_detect(sin_outs(i).values' * -1);
    Ampl = (abs(sin_outs(i).values(out_peaks($))) + abs(sin_outs(i).values(out_neg_peaks($)))) / (abs(sin_ins(i).values(peaks($))) + abs(sin_ins(i).values(neg_peaks($))));
    // disp([sin_outs(i).values(out_peaks($)), sin_outs(i).values(out_neg_peaks($)), sin_ins(i).values(peaks($)), sin_ins(i).values(neg_peaks($)), Ampl])
    L1 = abs(sin_ins(i).time(peaks($)) - sin_ins(i).time(neg_peaks($))); 
    L2 = abs(sin_outs(i).time(out_peaks($)) - sin_ins(i).time(peaks($))); 
    disp([sin_ins(i).time(neg_peaks($)), sin_ins(i).time(peaks($)), sin_outs(i).time(out_peaks($)), L1, L2])
    phi = -%pi * (L2/L1);
    ampl_list($+1) = Ampl;
    phi_list($+1) = phi;
end
