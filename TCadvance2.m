function [o2_1_constrain,o2_2_constrain,o2_3_constrain] = TCadvance2(x1,x2,x3)
%the output of this function is the variance of the randon variable part of each sample

% If you intend to utilize this code for academic purposes, 
% I kindly request that you cite my research paper titled:Investigating the Impact of Violations in Orthogonality and Zero cross-correlation Assumption upon the Accuracy of Triple Collocation Methods. 
% 2023/8/23


%直接限制beta2_star的上下限
%the output of this function is the variance of the randon variable part of each sample

up = 5;
down = 0.25;

%-------------------------------确定缩放系数start
x1_mean = mean(x1);
x2_mean = mean(x2);
x3_mean = mean(x3);

beta2_star = mean((x1-x1_mean).*(x3-x3_mean))/mean((x2-x2_mean).*(x3-x3_mean));
beta3_star = mean((x1-x1_mean).*(x2-x2_mean))/mean((x2-x2_mean).*(x3-x3_mean));

%对beta2_star_dif
if abs(beta2_star) > up
    beta2_star = sign(beta2_star)*up;
elseif abs(beta2_star) < down
    beta2_star = sign(beta2_star)*down;
end

%对beta3_star_dif
if abs(beta3_star) > up
    beta3_star = sign(beta3_star)*up;
elseif abs(beta3_star) < down
    beta3_star = sign(beta3_star)*down;
end

%-------------------------------确定缩放系数end

x2_star = beta2_star*(x2-x2_mean) + x1_mean;
x3_star = beta3_star*(x3-x3_mean) + x1_mean;


o2_1_constrain = mean((x1-x2_star).*(x1-x3_star));
o2_2_constrain = mean((x1-x2_star).*(x3_star-x2_star))/(beta2_star^2);
o2_3_constrain = mean((x3_star-x2_star).*(x3_star-x1))/(beta3_star^2);

end