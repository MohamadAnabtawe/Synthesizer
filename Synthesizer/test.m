 Samples= 0:1/44000:0.6;
 y =  sin(2*pi*55*Samples);
Fs=44000;
% 
% auto_corr_y=ifft(log(abs(fft(y))));
% [pks,locs] = findpeaks(auto_corr_y); 
% [mm,peak1_ind]=max(pks); 
% period=locs(peak1_ind+1)-locs(peak1_ind); 
% pitch_Hz=Fs/period
x=y;
            R=zeros(1,length(x));
            for m=1:length(x)
                for i=1:length(x)-m
                   R(m)=R(m)+x(i)-x(i+m);
                end

            end
   
     
            [pks,locs] = findpeaks(R); 
[mm,peak1_ind]=min(pks); 
period=locs(peak1_ind+1)-locs(peak1_ind); 
pitch_Hz=Fs/period

