%%1)

%a
v1= (4:2:100);
fprintf('Vector1 : ')
fprintf('%d ', v1)
fprintf('\n')

%b
v2= (5:-1:-5);
fprintf('Vector2 : ')
fprintf('%d ', v1)
fprintf('\n')

%c
v3= (0:1/100:1);
fprintf('Vector3 : ')
fprintf('%d ', v1)
fprintf('\n')

%d
B= rand(20, 30);
C= B(10:15, 9:12);
disp('C: ')
disp(C)

%e
x= (-pi:pi/15:pi);
fprintf('x : ')
fprintf('%d ', x)
fprintf('\n')

%f R: Corresponde a um gráfico da função sin (4*pi*x) na parte positiva do
%eixo dos x