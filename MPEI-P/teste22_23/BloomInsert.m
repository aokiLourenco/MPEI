function [Bloom] = BloomInsert(Bloom, elem, k)
        n = length(Bloom);
        
        for i=1:k
            elem = [elem int2str(i)];
            index = mod(string2hash_ex(elem,k),n)+1;         
            Bloom(index)= Bloom(index)+1;
        end
    end