%% ur5_setup_example
% Example to control UR5 via TCP/IP and PolyScope
% Author: Long Qian
% Date: Sept 2016

%% Program
% Add API path
addpath('Control');

% Init the connection
s = init();

% UR5 home configuration
Home = [0,-pi/2,0,-pi/2,0,0];

% Send control command
moverobotJoint(s, Home);

% Read the current joint angles
readrobotJoint(s);
