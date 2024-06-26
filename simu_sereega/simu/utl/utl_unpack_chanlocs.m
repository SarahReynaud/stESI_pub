function chanlocs = utl_unpack_chanlocs(nb_channels, CHLOCS)
    chanlocs = [];
    for i = 1:nb_channels
        tmp_struct = struct(...
            'type', CHLOCS.ch_types(i,:), ...
            'labels', CHLOCS.labels(i,:), ...
            'sph_phi', CHLOCS.sph_phi(i), ... 
            'theta', CHLOCS.theta(i), ... 
            'radius', CHLOCS.radius(i), ... 
            'X' , CHLOCS.X(i)*10^3, ...
            'Y' , CHLOCS.Y(i)*10^3, ...
            'Z', CHLOCS.Z(i)*10^3,  ...
            'sph_theta_besa' , CHLOCS.sph_theta_besa(i), ...
            'sph_phi_besa' , CHLOCS.sph_phi_besa(i));  
        chanlocs = [chanlocs, tmp_struct]; 
    end
end