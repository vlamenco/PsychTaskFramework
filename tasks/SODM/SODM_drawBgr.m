function SODM_drawBgr(blockSettings)
% SODM_DRAWBGR Whenever background gets drawn, also draw whether this is a
%   self-rewarding or other-rewarding task.

drawBgr(blockSettings);

xCoord = 100;
yCoord = 100;
DrawFormattedText(blockSettings.device.windowPtr, ...
  SODM_extractBeneficiary(blockSettings), ...
  xCoord, yCoord, ...
  blockSettings.default.fontColor);
end