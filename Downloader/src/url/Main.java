package url;

import java.io.File;

public class Main {

	public static void main(String[] args) {
		String link= "http://iiti.ac.in//people/~tanimad/JavaTheCompleteReference.pdf";
		File out = new File("C:\\Users\\a839591\\Desktop\\JavaFile.pdf");
		new Thread(new Download(link, out)).start();
	}
}
