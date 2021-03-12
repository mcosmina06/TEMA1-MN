function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
  fid = fopen(file_points, 'r');
	points = [];
  format long g;
  points = dlmread(file_points, ' ', 5, 0);
  x = zeros(10, 1);
  y = zeros(10, 1);
  for i = 1 : 10
    x(i, 1) = i;
    centroids = clustering_pc(points, i);
    y(i, 1) = compute_cost_pc(points, centroids);
  endfor
  plot(x, y)
  fclose(fid);
end

