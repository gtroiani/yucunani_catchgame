// Update frame count and move to next room (level 1) when frame count reaches 300
// 300 frames = 9 seconds

a++;
if (a >= 300){
room_goto (rm_level1);
}