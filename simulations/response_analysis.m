% RESPONSE_ANALYSIS
% Simplified second-order response model for a low-cost thrust vector control system.

clear;
clc;
close all;

params = sample_parameters();

t = 0:params.time_step:params.simulation_time;
wn = params.natural_frequency;
zeta = params.damping_ratio;
target = params.target_angle_deg;

if zeta < 1
    wd = wn * sqrt(1 - zeta^2);
    response = 1 - exp(-zeta * wn * t) .* ...
        (cos(wd * t) + (zeta / sqrt(1 - zeta^2)) * sin(wd * t));
else
    % fallback for critically damped / overdamped cases
    response = 1 - exp(-wn * t);
end

angle_response = params.neutral_angle_deg + target * response;

% Basic metrics
peak_angle = max(angle_response);
steady_state = angle_response(end);

tolerance = 0.02 * target; % 2 percent settling band
settling_index = find(abs(angle_response - target) <= tolerance, 1, 'first');

if isempty(settling_index)
    settling_time = NaN;
else
    settling_time = t(settling_index);
end

fprintf('ROSAN Simplified TVC Response Analysis\n');
fprintf('-------------------------------------\n');
fprintf('Target deflection: %.2f deg\n', target);
fprintf('Peak deflection: %.2f deg\n', peak_angle);
fprintf('Steady-state deflection: %.2f deg\n', steady_state);
fprintf('Estimated settling time: %.4f s\n', settling_time);

% Plot
figure;
plot(t, angle_response, 'LineWidth', 2);
hold on;
yline(target, '--', 'Target Angle');
xlabel('Time (s)');
ylabel('Deflection Angle (deg)');
title('Simplified Thrust Vector Control Step Response');
grid on;
