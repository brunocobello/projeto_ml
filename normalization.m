function [x_norm] = normalization(x)
	x_norm = (x - mean(x)) ./ std(x);
end
