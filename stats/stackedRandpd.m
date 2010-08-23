function S = stackedRandpd(D, K)
%% Call randpd(D) K times and concatinate in pages


S = zeros(D, D, K); 
for i=1:K
    S(:, :, i) = randpd(D);
end


end