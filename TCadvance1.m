function [o2_1_dif,o2_2_dif,o2_3_dif] = TCadvance1(x1,x2,x3)
%the output of this function is the variance of the randon variable part of each sample

% If you intend to utilize this code for academic purposes, 
% I kindly request that you cite my research paper titled:Investigating the Impact of Violations in Orthogonality and Zero cross-correlation Assumption upon the Accuracy of Triple Collocation Methods. 
% 2023/8/23

x1_mean = mean(x1);
x2_mean = mean(x2);
x3_mean = mean(x3);

beta2_star = x1_mean/x2_mean;
beta3_star = x1_mean/x3_mean;

x2_star = beta2_star*(x2-x2_mean) + x1_mean;
x3_star = beta3_star*(x3-x3_mean) + x1_mean;

o2_1_dif = mean((x1-x2_star).*(x1-x3_star));
o2_2_dif = mean((x1-x2_star).*(x3_star-x2_star))/(beta2_star^2);
o2_3_dif = mean((x3_star-x2_star).*(x3_star-x1))/(beta3_star^2);

end