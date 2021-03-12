% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = [];
	% TODO K-Means code 
  [n m] = size(points);
  nb_rows = n;
  nb_columns = m;
  nb_iter = 500;
 %aleg centroizii random
  for i = 1 : NC
    rand_row = round(1 + rand() * (nb_rows - 1) );
    centroids(i, :) = points(rand_row, :);
  endfor
  for i = 1 : nb_iter
    centroid_group = zeros(NC, nb_columns);
    centroid_nb_el = zeros(NC, 1);
    for j = 1 : nb_rows
      min = realmax;
      ind_centroid = 0;
      for k = 1 : NC
        dist_eucld = norm(points(j, : ) - centroids(k, :));
				if dist_eucld < min
					min = dist_eucld;
					ind_centroid = k;
				endif
      endfor
     	centroid_group(ind_centroid, :) += points(j, :);
			centroid_nb_el(ind_centroid)++;
    endfor
    for k = 1 : NC
			if (centroid_nb_el(k) == 0)
				randomRow = round(1 + rand() * (nb_rows - 1) );
				centroid_group(k, :) =  points(randomRow, :);
				centroid_nb_el(k) = 1;
			endif
		endfor
    aux_centroid = zeros(k, nb_columns);
		for k = 1 : NC 
			aux_centroid(k, :) = centroid_group(k, : ) / centroid_nb_el(k);
		endfor
     diff = abs(mean(aux_centroid) - mean(centroids));
    if diff < realmin
			break;
		endif
		centroids = aux_centroid;
  endfor
end
