/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author user
 */
public class Connectionz {
static Connection con;



public static Connection getConnection() {
    try{
        Class.forName("com.sql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/erercruit?zeroDateTimeBehavior=convertToNull [root on Default schema]","root","");
        System.out.println("Database Connected Successfully.");
    
    }
    catch(Exception ex){
       System.out.println(""+ex); 
    }
    return con;
    
  }   
}
