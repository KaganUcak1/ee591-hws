%% part a
alpha = pi/2;

z_rotation = [cos(alpha) sin(alpha) 0
              -sin(alpha) cos(alpha) 0
              0 0 1];
alpha_2 = pi;
x_rotation = [ 1 0 0 
              0 cos(alpha_2) sin(alpha_2)
              0 -sin(alpha_2) cos(alpha_2)];
alpha_3 = 2*pi;
y_rotation = [cos(alpha_3) 0 -sin(alpha_3)
              0 1 0
              sin(alpha_3) 0 cos(alpha_3)];

M = [1
     0
     0];

Rz = z_rotation*M
Ry = y_rotation*M
Rx = x_rotation*M


%% part b

alpha = pi/2; theta = pi/3; psi = 2*pi/3;

n = [sin(theta)*cos(psi)
     sin(theta)*sin(psi)
     cos(theta)];

symmetric_matrix = [0 n(3) -n(2)
                    -n(3) 0 n(1)
                    n(2) -n(1) 0];

rotation_matrix = [1 0 0
                   0 1 0
                   0 0 1]*cos(alpha) + (1-cos(alpha))*(n*n.') + sin(alpha)*symmetric_matrix;


M = [1
    0
    0]; 

rotated_M = rotation_matrix*M