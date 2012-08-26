size(400,400);
background(0);
noStroke();
smooth();
float radius = 1.0;
for (int deg = 0; deg < 360*6; deg += 8) {
float angle = radians(deg);
float x = 200 + (cos(angle) * radius);
float y = 150 + (sin(angle) * radius);
ellipse(x, y, 6, 6);
radius = radius + 0.34;
}
noFill();
stroke(255);
//bezier(293,150,300,350,200,380,100,300);
for (int i = 0; i <= 50; i=i+1) {
  float t = i / 50.0 ;
  float x = bezierPoint(293, 300, 200,100, t);
  float y = bezierPoint(150, 350, 380, 300, t);
  fill(255);
  ellipse(x, y, 5, 5);
}

save("Font08.jpg");
