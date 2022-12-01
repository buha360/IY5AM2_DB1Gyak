package db_gyak_0920;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.Scanner;
import java.util.regex.Pattern;

public class main {
	
    private static final Pattern COMMA = Pattern.compile(",");
    
	public static void IY5AM2(String[] args) {
		
		int db = 0;
		int szum = 0;
		int i = 0;
		int szam = 0;
		
	    try {
	    	BufferedWriter myReader = new BufferedWriter(new FileWriter("buhamilan.txt"));
	        Scanner s = new Scanner (System.in);
	        String str = s.nextLine();
			db = Integer.parseInt(str);
			int[] szamok = new int[db];
	        System.out.println("Adatok szam szerint = " + db);
	        
	        while (i < db) {
                    try {
                    	str = s.nextLine();
            			szam = Integer.parseInt(str);
                        szum += szam;
                        System.out.println((i+1) + ".adat = " + szam);
                    } catch (NumberFormatException ex) {
                        System.err.println(szam + " nem szam");
                    }
               
                    i++;
                }
	        
			myReader.close();
			s.close();
			
            } catch (Exception e) {
				System.out.println("Hiba.");
				e.printStackTrace();
			  }
	        System.out.println("Osszeg: " + szum);
	      } 
}
