function Im_ = crop(Im)
    r = size(Im,1);
    c = size(Im,2);
    if r > c
        x = round((r - c)/2);
        Im_ = Im(x+1:x+c,:,:);
    elseif r < c
        x = round((c - r)/2);
        Im_ = Im(:,x+1:x+r,:);
    else
        Im_ = Im;
    end
end