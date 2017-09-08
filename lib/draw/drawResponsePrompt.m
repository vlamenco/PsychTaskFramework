function drawResponsePrompt(trialData, blockConfig)
% Draws the response prompt symbol (by default, green oval).
%
% Args:
%   trialData: Trial properties and collected participant data
%   blockConfig: The block settings
%
% Returns:
%   Like all draw functions, it has no return.
%
% Todo: 
%   Nigh-duplicate code with drawITI. Factor out the general "draw an object in
%   the center when provided the center and blockConfig.draw.(object)".

windowPtr = blockConfig.device.windowPtr;
W = blockConfig.device.windowWidth; % width
H = blockConfig.device.windowHeight; % height
center = [W / 2, H / 2];
Screen('FillOval', windowPtr, blockConfig.draw.prompt.color, ...
  centerRectDims(center, blockConfig.draw.prompt.dims));
end
