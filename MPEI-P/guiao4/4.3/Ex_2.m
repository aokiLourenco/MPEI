udata = load('../u.data');

u = udata(1:end, 1:2); clear data;

users = unique(u(:,1));
users = users(randperm(length(users), 100));

tic;
movies = getMovies(users, u);
fprintf("getMovies(): %7.6es\n", toc)

tic;
distancias = getDistancias(users, movies);
fprintf("getDistancias(): %7.6es\n", toc);

tic;
SimilarUsers = filterSimilar(users, distancias, 0.4);
fprintf("filterSimilar(): %7.6e\n", toc);

fprintf("SimilarUsers (%d pairs): \n", height(SimilarUsers));
for n = 1:height(SimilarUsers)
    u1 = SimilarUsers(n, 1);
    u2 = SimilarUsers(n, 2);
    d = distancias(users == u1, users == u2);
end