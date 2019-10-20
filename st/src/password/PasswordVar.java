package password;

public class PasswordVar {

    public boolean acceptPassword(String password, String repassword)
    {

        if(password.equals(repassword))
    {
        System.out.println("User Accessed");
        return true;
    }else{
        System.out.println("User denied");
        return false;
    }

    }
}
