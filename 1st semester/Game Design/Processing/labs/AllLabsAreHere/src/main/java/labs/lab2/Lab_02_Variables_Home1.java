package labs.lab2;

import static processing.core.PApplet.println;

public class Lab_02_Variables_Home1 {
    public static void main(String[] args) {
        int exprResultInt = 0;
        exprResultInt = 3 * 5;
        println(exprResultInt);

        // exprResultInt = 3 * 5.0;
        exprResultInt = (int) (3 * 5.0f);
        println(exprResultInt);

        float exprResultDouble = 0.0f;

        exprResultDouble = 3 * 5;
        println(exprResultDouble);

        exprResultDouble = 3 * 5.0f;
        println(exprResultDouble);

        // Division operator
        exprResultInt = 9 / 2;
        println(exprResultInt);

        exprResultDouble = 9 / 2;
        println(exprResultDouble);

        exprResultDouble = 9 / 2.0f;
        println(exprResultDouble);

        exprResultDouble = 9.0f / 2;
        println(exprResultDouble);

        exprResultDouble = 9.0f / 2.0f;
        println(exprResultDouble);

        // Operator precedence in an expression
        exprResultDouble = 6 - 4 / 2;
        println(exprResultDouble);

        exprResultDouble = (6 - 4) / 2;
        println(exprResultDouble);

        exprResultDouble = 3 / 2 * 4;
        println(exprResultDouble);

        exprResultDouble = 3 * 4 / 2;
        println(exprResultDouble);

        exprResultDouble = (3.0f / 2.0f * 4.0f);
        println(exprResultDouble);

        exprResultDouble = (3.0f * 4.0f / 2.0f);
        println(exprResultDouble);

        // Modulo operator
        exprResultInt = 9 % 5; //
        println(exprResultInt);

        exprResultInt = 2 * 9 % 5;
        println(exprResultInt);

        exprResultInt = 2 * (9 % 5);
        println(exprResultInt);
    }
}
