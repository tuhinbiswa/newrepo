#include<stdio.h>
float add(float a,float b);
float subtract(float a,float b);
float multiply(float a,floatb);
float divide(float a,dloat b);

int main(){
float num1=100,num2=50;
printf("sum : %f",add(num1,num2));
printf("substraction: %f",subtract(num1,num2));
printf("multiplication: %f",multiply(num1,num2));
printf("division :%f",divide(num1,num2));
return 0;
}
float add(float a,float b){
	return a+b;
}

float subtract(float a,float b){
	return a-b;
}

float multiply(float a,float b){
	return a*b;
}

float divide(float a,float b){
	if(b!=0){
		return a/b;
	}else{
		printf("Error");
		return 0;
	}
}

