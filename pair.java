/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;

/**
 *
 * @author S U V A N K A R
 */
import java.io.*;
import java.util.*;
public class JavaApplication1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int n,i,count = 0,j;
        Scanner in = new Scanner(System.in);
        n = in.nextInt();
        int a[] = new int[100];
        for(i=0;i<n;i++){
            a[i] = in.nextInt();
            }
        for(i=0;i<n;i++){
            if(a[i] != 0){
            for(j=i+1;j<n;j++){
                if(a[i] == a[j]){
                    count++;
                    a[j]=0;
                    break;
                }
                
            }
            }
        }
        System.out.println(count);
        }
    
    }
