function [thetaAngles, phiAngles] = convertCartesianToPolar(xPos, yPos, zPos)
% Convert from cartesian points to polar angles
%
%[thetaAngles, phiAngles] = convertCartesianToPolar(xPos, yPos, zPos)

thetaAngles = atan(sqrt(xPos.^2+yPos.^2)./zPos);
phiAngles = atan(yPos./xPos);

thetaAngles = thetaAngles*180/pi;
phiAngles = phiAngles*180/pi;
phiAngles(xPos<0) = phiAngles(xPos<0) + 180;

thetaAngles(isnan(thetaAngles)) = 0;
phiAngles(isnan(phiAngles)) = 0;

end