clear; clc;

PV_spiketimes = load('../Data/InVitro/PV_spiketimes.mat');


% Each column of PV_spiketimes.M is an upstate of neurons firing.
% I'm going to treat this as one frame.
for i = 1:size(PV_spiketimes.M, 2)
    
    if(~isnan(PV_spiketimes.M(1,i))) %NaNs denote boundaries
        get_windowed_frames(PV_spiketimes.M(:,i));
    end
    
end