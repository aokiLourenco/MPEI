load("L.mat")
%% a)

N=size(L);
disp("O número de páginas é: " + N(1));

S=sum(L);
find(S==0); %índices das dead-ends


%% b)
N=size(L);
H=zeros(N(1),N(1));
n=0;
for i=1:110
    n=sum(L(:,i));
    H(:,i)=L(:,i)/n
end

%% c)
N=N(1);
b=0.85;
M=ones(N,N)/N;
A=b*H+(1-b)*M;

%% d)

A = b*H + (1-b)*ones(length(H),length(H))/6;
r = (ones(1,6)/6)';
epsilon = 1e-4;
iter = 0;
while 1
    iter = iter +1;
    rold = r;
    r = A*r;
    if max(abs(r-rold))<epsilon
        break;
    end
end

iter
%% e)

max(S)