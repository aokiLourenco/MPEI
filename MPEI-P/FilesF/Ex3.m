%% b)

T=[0 0.3 0 0.3 0 0;
    1/3 0 0.5 0 0.45 0;
    1/3 0.3 0 0.3 0 0;
    1/3 0 0.5 0 0.45 0;
    0 0.3 0 0.3 0 0;
    0 0.1 0 0.1 0.1 1];

sum(T)

%% c)

rand=randi(5);
state=crawl(T,rand,6)

%% d)

N=1e6;
arr = cell(1,N);

for i = 1:N

    rand_ei=randi(5);

    state2=crawl(T,rand_ei,6);
    arr{i}=state2;
end

%% e)

cb=0;
for i = 1:N

    state=crawl(T, 5, 6);

    if length(state)==5
        if (state(5)==3 && state(1)==9 && state(2)==7 && state(3) == 1 && state(4) == 5)
            cb = cb+1;
        end
    end

end

pb=cb/N;

%% g)

state3=crawl(T,4,6);
sum(state3);