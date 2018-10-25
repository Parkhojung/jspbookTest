package test.ch03;

public class Calc {
	int res=0;
	
	Calc(int n1,int n2,String op){
			if(op.equals("+"))res= n1+n2;
			if(op.equals("-"))res= n1-n2;
			if(op.equals("*"))res= n1*n2;
			if(op.equals("/"))res= n1/n2;
	}
	
	int getResult() {
		return res;
	}
}
