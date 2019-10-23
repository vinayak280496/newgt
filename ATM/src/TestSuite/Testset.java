package TestSuite;


import ATMSystem.*;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class Testset {
    private ATMSys atmSystem;

    @BeforeClass
    public void start(){
        atmSystem=new ATMSys();
        atmSystem.start();
    }

    @Test(priority=0)
    public void acceptcard(){
        Assert.assertTrue(atmSystem.insertCard("8505 4504 4520 3208","1234"));
    }

    @Test(priority = 1)
    public void checkExpiry(){
        Assert.assertTrue(!atmSystem.insertCard("4522 5604 9087 7841","5678"));
    }

    @Test(priority = 2)
    public void testWrongPin() {
        boolean test = false;
        for (int i = 0; i < 3; i++) {
            int randompassword = (int) Math.floor(Math.random()*10 + 1000);
            test=atmSystem.insertCard("5106 8075 6508 8287",""+randompassword);
        }
            Assert.assertTrue(test);
    }

    @Test(priority = 3)
    public void selectLanguage(){
        Assert.assertEquals(atmSystem.selectLanguage(1),"english");
    }


    @Test(priority = 4)
    public void selectAccountType(){
        Assert.assertEquals(atmSystem.selectAccountType(2),"saving");
    }

    @AfterClass
    public void end(){
        atmSystem.end();
    }

}
