
for i = 1:T
    fjoin = fcondjoin(data, sigma, mu);
    
    % E step
    temp = fjoin.*repmat(prior,s,1);
    [M, cl] = max(t, [], 2);
    gamma = zeros(s,3);
    for j = 1:size(cl)
        gamma(j, cl(j,1)) = 1;
    end
    m = sum(gamma, 1);
    % M step
    prior = m./s;
    
    c1 = data' * gamma(:, 1);
    c2 = data' * gamma(:, 2);
    c3 = data' * gamma(:, 3);
    mu = [c1 c2 c3];
    mu = mu./repmat(m,2,1);
    
    t1 = (data - repmat(mu(:,1)',s,1)).^2;
    t2 = (data - repmat(mu(:,2)',s,1)).^2;
    t3 = (data - repmat(mu(:,3)',s,1)).^2;
    t1 = t1' * gamma(:,1);
    t2 = t2' * gamma(:,2);
    t3 = t3' * gamma(:,3);
    sigma = [t1 t2 t3];
    sigma = sigma ./ repmat(m, 2, 1);
    
end

t1 = (-0.5*(data - repmat(mu(:,1)',s,1)).^2)./repmat(sigma(:,1)',s,1);
t2 = (-0.5*(data - repmat(mu(:,2)',s,1)).^2)./repmat(sigma(:,2)',s,1);
t3 = (-0.5*(data - repmat(mu(:,3)',s,1)).^2)./repmat(sigma(:,3)',s,1);
t1 = sum((t1 - repmat(log(sqrt(sigma(:,1)')),s,1)),2);
t2 = sum((t2 - repmat(log(sqrt(sigma(:,2)')),s,1)),2);
t3 = sum((t3 - repmat(log(sqrt(sigma(:,3)')),s,1)),2);
t = [t1 t2 t3];
t = t + repmat(log(prior),s,1); % not sure where to add ln(prior)
[M, cl] = max(t, [], 2);

figure;
gscatter(data(:,1),data(:,2),cl,'brg')
xlabel('x1')
ylabel('x2')
