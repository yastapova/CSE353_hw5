function [ f ] = fcondjoin( X, sigma, mu )

    s = size(mu,2);
    f = zeros(size(X,1),3);
    for i = 1:size(X,1)
        x = X(i,:);
        t = ones(size(sigma))./(sqrt(2*pi*sigma)).*exp(-0.5*((repmat(x',1,s) - mu).^2)./sigma);
        % t is size 2 x 3
        t = prod(t, 1);
        % t is size 1 x 3
        f(i,:) = t;
    end
    % returns size(X,1) x 3 matrix
end

