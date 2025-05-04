@isTest
public class CalculatorTest {
    @isTest
    static void testAddition(){
        Decimal result = Calculator.add(10, 5);
        System.assertEquals(15, result, 'Addtion result is incorrect');
    }
    @isTest
    static void testSubstraction(){
        Decimal result = Calculator.substract(10, 5);
        System.assertEquals(5, result, 'Substraction result is incorrect');
    }
    @isTest
    static void testMultiplication(){
        Decimal result = Calculator.multiply(10, 5);
        System.assertEquals(50, result, 'Multiplication result is incorrect');
    }
    @isTest
    static void testDivision(){
        Decimal result = Calculator.divide(10, 5);
        System.assertEquals(2, result, 'Division result is incorrect');
    }
        @isTest
    static void testDivisionByZero(){
        try{
        Calculator.divide(10, 0);
        System.assert(false,'Division by zero did not throw exception');
        }catch(MathException e){
        System.assertEquals('Division by zero is not allowed', e.getMessage(),'Unexpected exception message');
        }
       
    }

}