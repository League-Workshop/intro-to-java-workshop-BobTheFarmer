package section2;

import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class MyFirstJavaProgram {
	
	public static void main(String[] args) {
		
		// START HERE
	Robot robodude = new Robot("batman");
for(int i=0; i<4; i++) {
	robodude.setSpeed(900);
	robodude.penDown();
	robodude.setRandomPenColor();
	for(int j=0; j<4; j++) {
	robodude.move(200);
	robodude.turn(90);
	}
	robodude.turn(-90);
}
	}
}
