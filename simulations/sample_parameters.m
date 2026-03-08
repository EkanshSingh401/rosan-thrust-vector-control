function params = sample_parameters()
% SAMPLE_PARAMETERS
% Returns sample parameters for a simplified thrust vector control response model.

params.target_angle_deg = 5;        % target thrust vector deflection
params.natural_frequency = 18;      % rad/s
params.damping_ratio = 0.85;        % dimensionless
params.simulation_time = 0.25;      % seconds
params.time_step = 0.001;           % seconds
params.neutral_angle_deg = 0;       % baseline angle
end
