package on_gk.singleton.a4;

public class User {
    String name;

    public User(String name) {
        this.name = name;
    }

    public void vote(Candidate c){
        Election.Instance().vote(c,name);
    }
    public void InKQ(){
        System.out.println(Election.Instance().InKQ());
    }
}
