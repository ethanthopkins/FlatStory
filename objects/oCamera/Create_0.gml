/// @desc Set Up Camera
cam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
hLookAheadConstant = 150;
vLookAheadConstant = 100;
hLookAhead = 0;
vLookAhead = 0;
hLookAheadVal = 0;
vLookAheadVal = 0;
smooth = 30;
valueY = 0;

//ScreenShake
shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;