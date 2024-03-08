package creational.singleTon.vote;

import java.util.ArrayList;
import java.util.List;

//Singleton
public class Election {
    private int biden = 0, trump = 0;
    private static Election instance;
    List<String> lst_voted = new ArrayList<>();
    protected Election(){};
    public static Election getInstance(){
        if(instance == null){
            instance = new Election();
        }
        return instance;
    }
    public void vote(Candidate c, String user){
        if(!isVoted(user)) {
            if (c == Candidate.JOE_BIDEN)
                biden++;
            else if (c == Candidate.DONAL_TRUMP)
                trump++;
            lst_voted.add(user);
        }

    }
    public boolean isVoted(String user){
        for(String s : lst_voted){
            if(s == user){
                return true;
            }
        }
        return false;
    }
    public void inKQ(){
        System.out.println("Donnal Trump: " + trump);
        System.out.println("Joe Biden: " + biden);
    }
}
