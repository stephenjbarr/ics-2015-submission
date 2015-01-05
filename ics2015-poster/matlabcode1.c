Normal_BuildT = realmax * ones(T, i_max, j_max);
for i=(1:i_max)
    for j=(1:j_max)
	Normal_BuildT(T,i,j) = compute_cell_final(i,j);
    end
end

for t=((T-1):-1:1)
    for i=(1:i_max)
	for j=(1:j_max)
	   Normal_BuildT(t,i,j) = compute_cell(t,i,j, Normal_BuildT(t+1,:,:));
	end
    end
end
