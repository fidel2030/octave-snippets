close all

clear all
clc
more off % don't stop when displaying
fig1 = figure; % fig1 is a handle
format short eng % engineering format, i.e. um, nm,


prop = get(fig1); %give the values of the handle
c = get(fig1, 'Color'); %get background of fig1
set(fig1, 'Color', 'r'); %red background
c = [ 1.0 .8 0]; %rgb yellow. white is [1.0 1.0 1.0]
set(fig1, 'Color', c); %gold color
set(fig1, 'Name', 'FDTD Analysis');
set(fig1, 'NumberTitle', 'off'); %remove 'fig*' from title
set(fig1, 'position', [100 400 300 300]); %position of figure
          % left bottom width height
          % lower-left position(x=left,y=bottom) first quadrant
figure('units', 'normalized', 'outerposition', [ 0 0 1 1]); %maximized
figure('units', 'normalized', 'outerposition', [ 1 0 1 1]); %on second monitor
%subplot(rows, columns, plotnumber)
%subplot(2,2, 1) plot here
%subplot(2,2,[3:4]) plot in 2x2 array, use full second rows
x = linspace(-1, 1, 100);
y = x.^2;
figure('Color', 'w');
h = plot(x, y, 'LineWidth', 2);
h2 = get(h, 'Parent');
set(h2, 'FontSize', 22, 'LineWidth', 2); % h2 is the handle of the axis
%set tick marks
xm = [-1:0.5:+1];
xt = {};
for m = 1:length(xm)
  xt{m} = num2str(xm(m), '%3.2f');
end
set(h2, 'XTick', xm, 'XTickLabel', xt);

ym = [0:0.1:+1];
yt = {};
for m = 1:length(ym)
  yt{m} = num2str(ym(m), '%2.1f');
end
set(h2, 'YTick', ym, 'YTickLabel', yt);
//set(h2, 'xdir', 'reverse')
xlabel('x');
ylabel('y   ', 'Rotation', 0);
title('Better Plot');

% axis([ -2 2 0.5 1.5]); set axis limits
% xlim([-2 2]); same as above but for x-axis only
%ylim([0.5 1.5]); for y-axis
text(-0.75, 0.6, 'Cool Curve', 'Color', 'g', 'HorizontalAlignment', 'left');
text(0,0.03, 'min', 'Color', 'g', 'HorizontalAlignment', 'center');
