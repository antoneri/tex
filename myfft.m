function z = myfft(y,N)
% compute the FFT of a vector y of length N=2^m
if N == 1
	z = y;
else
	ze = myfft(y(1:2:N), N/2); % even entries
	zo = myfft(y(2:2:N), N/2); % odd entries
	w = exp(-2i*pi/N);
	for k = 1:N/2
		z(k) = ze(k) + w^(k-1).*zo(k);
		z(k+N/2) = ze(k) - w^(k-1).*zo(k);
	end
end