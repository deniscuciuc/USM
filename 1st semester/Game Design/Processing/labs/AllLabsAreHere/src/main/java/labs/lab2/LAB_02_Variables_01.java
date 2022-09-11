package labs.lab2;

public class LAB_02_Variables_01 {
    public static void main(String[] args) {
        final int SECONDS_IN_MINUTE = 60;
        final int MINUTES_IN_HOUR = 60;
        final int HOURS_IN_DAY = 24;
        final int DAYS_IN_YEAR = 365;
        final int SECONDS_IN_HOUR = SECONDS_IN_MINUTE * MINUTES_IN_HOUR;
        final int SECONDS_IN_DAY = SECONDS_IN_HOUR * HOURS_IN_DAY;
        final int SECONDS_IN_YEAR = SECONDS_IN_DAY * DAYS_IN_YEAR;

        System.out.println("Number of seconds in a minute: " + SECONDS_IN_MINUTE);
        System.out.println("Number of seconds in a hour: " + SECONDS_IN_HOUR);
        System.out.println("Number of seconds in a day: " + SECONDS_IN_DAY);
        System.out.println("Number of seconds in a year: " + SECONDS_IN_YEAR);
    }
}
