% Given data
T = [18.3, 18.2, 18, 17.8, 17.7, 17.2, 16.9, 16.5, 10.7, 9.9, 9.1];
z = [0, -1, -2, -3, -4, -5, -6, -7, -8, -9, -10];

% Interpolation point
zInterpolate = -7.5;

% Calculate divided differences
divDiff = zeros(length(T), length(T));
divDiff(:, 1) = T;

for j = 2:length(T)
    for i = 1:length(T) - j + 1
        divDiff(i, j) = (divDiff(i + 1, j - 1) - divDiff(i, j - 1)) / (z(i + j - 1) - z(i));
    end
end

% Find the index for the largest change in temperature
[~, index] = max(abs(divDiff(:, 2)));

% Coefficients of the second-order polynomial
a0 = T(index);
a1 = divDiff(index, 2);
a2 = divDiff(index, 3);

% Evaluate the polynomial at the interpolation point
P2 = a0 + a1*(zInterpolate - z(index)) + a2*(zInterpolate - z(index))*(zInterpolate - z(index + 1));

% Display the results
disp(['Interpolated temperature at z = -7.5 m: ' num2str(P2)]);