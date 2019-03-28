package section3;

import javax.swing.JOptionPane;
import com.sun.speech.freetts.Voice;
import com.sun.speech.freetts.VoiceManager;

public class StephenHawking {
	
	// 1. make a main method and put steps 2, 3 & 4 inside it
	public static void main(String[] args) {
	// 4. Use a for loop to repeat steps #2 and #3, a lot of times
		for(int i=0; i<99999; i++) {
	// 2. ask the user for a sentence
		String Sentence=JOptionPane.showInputDialog("Gimme a sentece");
	// 3. call the speak method below and send it the sentence
speak(Sentence);
	

	
		}
	}
	
	
	
	
	/* Don’t change this…. */
	static void speak(String words) {
		try {
			Runtime.getRuntime().exec("say " + words).waitFor();
		}
		 catch (Exception e) {
			 e.printStackTrace();
		 
		 }
		
	