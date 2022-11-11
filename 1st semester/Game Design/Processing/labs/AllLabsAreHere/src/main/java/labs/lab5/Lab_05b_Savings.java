package labs.lab5;

import processing.core.PApplet;

public class Lab_05b_Savings extends PApplet {


    public void settings() {
        size(300, 300);
    }

    public void draw() {
        background(255);
        calculateAmountForYears(1000, 2, 10);
    }

    void calculateAmountForYears(int deposit, int percent, int years) {
        float percentInMoneyFromDeposit = deposit / 100f * percent;
        int savingsPosX = 10;
        int accountPosX = 70;
        int posY = 25;

        fill(0);
        for (int i = 0; i <= years; i++) {
            if (i == 0) {
                text("Savings", savingsPosX, posY / 2f);
                text("Account", accountPosX, posY / 2f);
            } else {
                float accountAmount = deposit + percentInMoneyFromDeposit * i;

                text(i, savingsPosX, posY * i);
                text(round(accountAmount), accountPosX, posY * i);
            }
        }
    }
}
