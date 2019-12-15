package Passwordpgm;

public class PasswordProgram {
    public boolean acceptPassword(String password, String RePassword){
        if(password.equals(RePassword)){
            System.out.print("User Authenticated");
            return true;
        }else {
            System.out.print("User unauthorized");
            return false;
        }
    }
}
