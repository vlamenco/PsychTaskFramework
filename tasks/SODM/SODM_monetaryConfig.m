function c = SODM_monetaryConfig(initial_config)
% Configure monetary blocks of the self/other task.
%
% Args:
%   initial_config: Task config struct to modify
%
% Returns:
%   Config struct specific to the monetary conditions of the self/other task

if exist('initial_config', 'var')
  c = initial_config;
else
  c = configDefaults();
end

c.runSetup.blockName = 'Monetary';
c.runSetup.conditions.payoffKind = 'Monetary';

%% Lookup tables
c.runSetup.lookups.txt = {'$0'; '$5'; '$8'; '$12'; '$25'};
c.runSetup.lookups.img = {'0.jpg'; '5.jpg'; '8.jpg'; '12.jpg'; '25.jpg'};
% Fix images to path
c.runSetup.lookups.img = prependPath(c.runSetup.lookups.img, c.task.imgPath);
end
