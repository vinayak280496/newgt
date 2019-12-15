package testsuite;

import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import password.PasswordVar;

public class test {

    PasswordVar pass;

    @BeforeClass
    public void init(){
        pass = new PasswordVar();
    }


    @Test(priority = 0)
            public void testPassword()
    {
        Assert.assertTrue(pass.acceptPassword("abcd","abcd"));
    }
}
