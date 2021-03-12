% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
  [np mp] = size(points);
  nb_rows_p = np;
  nb_columns_p = mp;
  [nc mc] = size(centroids);
  nb_rows_c = nc;
  nb_columns_c = mc;
  centroid_group = zeros(nb_rows_c, 1);
  for j = 1 : nb_rows_p
    min = realmax;
    ind_centroid = 0;
    for k = 1 : nb_rows_c
      dist_eucld = norm(points(j, : ) - centroids(k, :));
			if dist_eucld < min
				min = dist_eucld;
        ind_centroid = k;
			endif
    endfor
    centroid_group(ind_centroid, 1) += min;
  endfor
  cost = (sum(centroid_group));
end

