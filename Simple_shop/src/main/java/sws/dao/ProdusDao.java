package sws.dao;
import sws.model.*;

import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;


public class ProdusDao {
	
	public List<produs> getProduse() throws ClassNotFoundException, IOException{
		List<produs> produse = new ArrayList<produs>();
		FileInputStream fis = new FileInputStream("C:\\Users\\User\\eclipse-workspace\\Simple_shop\\produse.txt");

	 
		
		//the file to be opened for reading        
		Scanner sc=new Scanner(fis);    //file to be scanned  
		
		while(sc.hasNextLine())  
		{
		produs pr = new produs();
		pr.setName(sc.nextLine());
		pr.setCategory(sc.nextLine());
		pr.setPrice(sc.nextLine());		
		produse.add(pr);
		}
		sc.close();     //closes the scanner 
	   //returns the line that was skipped  
		
		return produse;
		  
		
		
		}  
		 } 


