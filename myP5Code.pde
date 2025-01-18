// 🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

// 🎯Variable Declarations Go Here
var rain1 = 65;
var rain2 = 65;
var rain3 = 65;
var rain4 = 65;
var rain5 = 65;
var rain6 = 65;
var rain7 = 65;
var rain8 = 65;
var rain9 = 65;
var sun = 20;

// 🟢Draw Procedure - Runs on Repeat
void draw() {
    background(255, 255, 255, 0);

    if (mousePressed) {
        showXYPositions();
    }

    // 🎯Animation Code Goes Here
    fill(201, 187, 141, 255 - sun);
    stroke(201, 187, 141, 255 - sun);
    ellipse(318, sun, sun, sun); // Fixed syntax issue (removed duplicate "sun")

    stroke(0, 0, 0);
    rect(129, rain1, 3, 7);
    rect(100, rain2, 3, 7);
    rect(185, rain3, 3, 7);
    rect(195, rain4, 3, 7);
    rect(200, rain5, 3, 7); 
    rect(260, rain6, 3, 7);
    rect(321, rain7, 3, 7);
    rect(254, rain8, 3, 7);
    rect(222, rain9, 3, 7);

  
    rain1 += 17;
    rain2 += 8;
    rain3 += 15;
    rain4 += 12;
    rain5 += 10;
    rain6 += 19;
    rain7 += 11;
    rain8 += 16;
    rain9 += 13; 
    sun += 2;


    if (rain1 > 400) rain1 = 65;
    if (rain2 > 400) rain2 = 65;
    if (rain3 > 400) rain3 = 65;
    if (rain4 > 400) rain4 = 65;
    if (rain5 > 400) rain5 = 65; 
    if (rain6 > 400) rain6 = 65;
    if (rain7 > 400) rain7 = 65;
    if (rain8 > 400) rain8 = 65;
    if (rain9 > 400) rain9 = 65;
    if (sun > 400) sun = 20;
}

// 🟡Extra FUN Features Ms. Hall Added
// Proceed with Caution (and Curiosity!)
void showXYPositions() {
    fill(255, 255, 255);
    rect(270, 300, 150, 100);
    fill(0, 0, 0);
    textSize(30);
    text("x = " + mouseX + "\ny = " + mouseY, 290, 350);
    fill(255, 0, 255);
    ellipse(mouseX, mouseY, 10, 10);
}