function select_stir
% Selects STIR as PET Engine

filepath = mfilename('fullpath');
l = length(filepath) - length('select_stir');
path = filepath(1:l);
copyfile([path '/+mStir'], [path '/+PET'], 'f')

% load C++-to-C interface library
if ~libisloaded('miutilities')
    fprintf('loading miutilities library...\n')
    [notfound, warnings] = loadlibrary('miutilities');
end
% load STIR interface library
if ~libisloaded('mstir')
    fprintf('loading mstir library...\n')
    [notfound, warnings] = loadlibrary('mstir');
end
end