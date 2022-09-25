package db_gyak_0920;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Scanner;
import java.util.regex.Pattern;

public class IY5AM2 {
	
    private static final Pattern COMMA = Pattern.compile(",");
    
	public static void main(String[] args) {
		
		int db = 0;
		int szum = 0;
		int i = 0;
		
	    try {
	    	BufferedReader myReader = new BufferedReader(new FileReader("buhamilan.txt"));
	        Scanner s = new Scanner (System.in);
	        String str = s.nextLine();
			db = Integer.parseInt(str);
			String line;
	        System.out.println("Adat szam = " + db);
	        
	        while ((line = myReader.readLine()) != null) {
                 for(String token : COMMA.split(line)) {
                	 try {
                		 szum += Integer.parseInt(token);
                	 }catch(NumberFormatException ex) {
                		 System.out.println(token + "nem szam");
                	 }
                	 i++;
                 }
	        }
			System.out.println("Osszeg: " + szum);
            } catch (Exception e) {
				System.out.println("Hiba");
				e.printStackTrace();
			  }
	      } 
}