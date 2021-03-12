% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	% set these values correctly
	NC = 0;
	points = [];
	% TODO read NC
	% TODO read points
  fid1=fopen(file_params, 'r');
 	fid2=fopen(file_points, 'r');
  NC = load(file_params);
  format long g;
  points = dlmread(file_points, ' ', 5, 0);
  fclose(fid1);
  fclose(fid2);
end

