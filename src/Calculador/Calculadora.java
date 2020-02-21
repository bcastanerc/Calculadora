package Calculador;

public class Calculadora {

   public Calculadora(){
	  String acumulado = "";
	}
   
   public String Spliting(String acumulado) {;
	   for(int i = 0; i < acumulado.length(); i++) {
		   if(acumulado.charAt(i) == 'S') {
				String[] ar =  acumulado.split("S");
				int num1 = Integer.parseInt(ar[0]);
				int num2 = Integer.parseInt(ar[1]);
				return Integer.toString(num1+ num2);
		   }
			if(acumulado.charAt(i) == '-') {
				String[] ar =  acumulado.split("-");
				int num1 = Integer.parseInt(ar[0]);
				int num2 = Integer.parseInt(ar[1]);
				return Integer.toString(num1-num2);   
			}
			if(acumulado.charAt(i) == '/') {
				String[] ar =  acumulado.split("/");
				int num1 = Integer.parseInt(ar[0]);
				int num2 = Integer.parseInt(ar[1]);
				return Integer.toString(num1/ num2);   
			}
			if(acumulado.charAt(i) == '*') {
				String[] ar =  acumulado.split("*");
				int num1 = Integer.parseInt(ar[0]);
				int num2 = Integer.parseInt(ar[1]);
				return Integer.toString(num1*num2);   
			}
	   }
	   
	   return acumulado;
   }
}
