package ATMSystem;

import java.util.ArrayList;
import java.util.Calendar;

public class ATMDB {
    String cardNo;
    int expiryDate;
    String password;

    public  ATMDB(String cardNo, String password, int expiryDate)
    {
        this.cardNo=cardNo;
        this.password=password;
        this.expiryDate=expiryDate;

    }
}

public class ATMSys {
    private ArrayList<ATMDB> atmdbs;
    private Calendar calendar;
    public void start(){
        atmdbs = new ArrayList<>();
        calendar=Calendar.getInstance();

        ATMDB user1=new ATMDB("8505 4504 4520 3208", "1234",2022);
        ATMDB user2=new ATMDB("4522 5604 9087 7541", "5678",2018);
        ATMDB user3=new ATMDB("5106 8075 6508 8287", "4321",2021);

        atmdbs.add(user1);
        atmdbs.add(user2);
        atmdbs.add(user3);

        println("Welcome to ATM.");

    }
    public boolean insertCard(String cardNo, String password){
        for (int i=0;i<atmdbs.size();i++){
            ATMDB row = atmdbs.get(i);
            if (row.cardNo.equals(cardNo)){
                println("Card Inserted!");

                if (row.password.equals(password)){
                    println("user authenticated.");

                    int year=calendar.get(Calendar.YEAR);

                    if (row.expiryDate<year){
                        println("Card has expired!");
                        return false;
                    }
                    return true;
                }else {
                    println("Wrong Password");
                    return false;
                }
            }
        }
        println("Card not registered.");
        return false;
    }

    public String selectLanguage(int choice){
        println("Select Language.");
        println("English");
        println("Hindi");
        println("Enter your choice");

        switch (choice){
            case 1:
                println("English Selected.");
                return "english";

            case 2:
                println("Hindi Selected");
                return "Hindi";

            default:
                return "invalid";
        }
    }

    public String selectAccountType(int choice){
        println("Select Account Type");
        println("1. Current");
        println("2. Savings");

        println("Enter your choice");

        switch (choice){
            case 1:
                return "current";

            case 2:
                return "savings";

            default:
                return "invalid";
        }
    }

    public void println(Object o){
        System.out.println(String.valueOf(o));
    }
    public void end(){
        println("Thank you..!!");
    }
}
