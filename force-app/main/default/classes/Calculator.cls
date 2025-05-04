public class Calculator {
    //Added this comment to check the deployment life cycle
    //Added comment to check the workflow
    public static Decimal add(Decimal num1 , Decimal num2){
        return num1+num2;
    }
    
     public static Decimal substract(Decimal num1 , Decimal num2){
        return num1-num2;
    }
    
     public static Decimal multiply(Decimal num1 , Decimal num2){
        return num1*num2;
    }
    
    
     public static Decimal divide(Decimal num1 , Decimal num2){
         if(num2==0){
             throw new MathException('Division by zero is not allowed');
         }
        return num1/num2;
    }

}