package Testsuit;

import Passwordpgm.PasswordProgram;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class TestPassword {
    PasswordProgram pwd;
    @BeforeClass
    public void init(){
        pwd = new PasswordProgram();
    }
    @Test(priority = 0)
    public void testPassword(){
        Assert.assertTrue(pwd.acceptPassword("Abcd","Abcd"));
    }
}

