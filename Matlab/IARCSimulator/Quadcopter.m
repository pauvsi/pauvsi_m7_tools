classdef Quadcopter
    %QUADCOPTER Summary of this class goes here
    %   performs the operations that a quadrotor performs
    
    properties
        %variables
        pos = [0, 0, 0]; %in meters
        velocity = [0, 0, 0]; %in m/s
        angleQuat = [0, 0, 0, 0]; %in quarternion
        angleRad = [0, 0, 0]; % in radians
        angularVelocity = [0, 0, 0]; % in arbitrary unit
        motorForces = [0, 0, 0, 0]; % the motor forces are in newtons
        
        Trajectory;
        trajectoryTimer = 0; % this variable will tell the quad how to fly
        
        touching = 0; % bool for whether the quad is touching a roomba or not
        touchTimer = 0; % timer for touch maneuver
        
        %Constants
        I = [1, 1, 1]; %moment of inertia for vehicle
        %Gains
        POSITION_GAINS_P = [1, 0, 0;
                            0, 1, 0;
                            0, 0, 1];
        POSITION_GAINS_I = [1, 0, 0;
                            0, 1, 0;
                            0, 0, 1];
        POSITION_GAINS_D = [1, 0, 0;
                            0, 1, 0;
                            0, 0, 1];
        MOMENT_GAINS_P = [1, 0, 0;
                          0, 1, 0;
                          0, 0, 1];
        MOMENT_GAINS_D = [1, 0, 0;
                          0, 1, 0;
                          0, 0, 1];
    end
    
    methods
        % Constructor for Quadcopter
        function obj = Quadcopter(pos)
            obj.pos = pos;
        end
    end
    
end
