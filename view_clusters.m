% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	% TODO graphical representation coded here 
  [np mp] = size(points);
  nb_rows_p = np;
  nb_columns_p = mp;
  [nc mc] = size(centroids);
  nb_rows_c = nc;
  nb_columns_c = mc;
  centroid_group = zeros(nb_rows_c, 1);
  x = zeros(nb_rows_p, 1);
  y = zeros(nb_rows_p, 1);
  z = zeros(nb_rows_p, 1);
  c = zeros(nb_rows_p, 3);
  cmap = hsv(nb_rows_c);
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
    x(j, 1) = points(j, 0);
    y(j, 1) = points(j, 1);
    z(j, 1) = points(j, 2);
    c(j, :) = cmap(ind_centroid, :);
  endfor
  scatter3(x, y, z, [], c);
end

