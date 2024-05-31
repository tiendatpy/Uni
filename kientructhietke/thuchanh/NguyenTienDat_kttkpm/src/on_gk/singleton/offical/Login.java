package on_gk.singleton.offical;

import java.util.ArrayList;
import java.util.List;

public class Login {
    List<User> lstUser = new ArrayList<>();
    User user;
    private static Login instance;

    protected Login(){};
    public static Login getInstance(){
        if(instance == null){
            instance = new Login();
        }
        return instance;
    }
    public void Login(User u){
        for(var x : lstUser){
            if(u.userName.equals(x.userName) && u.password.equals(x.password)){
                user = u;
                return;
            }
        }
    }
    public void add(User u){
        lstUser.add(u);
    }
    public void logout(){
        user = null;
    }
    @Override
    public String toString(){
        StringBuilder builder = new StringBuilder();
        if (user != null)
            builder.append("Username: ").append(user.userName).append("\n");
        else
            builder.append(" ");
        return builder.toString();
    }
}
