package on_gk.singleton.a4;

import java.util.ArrayList;
import java.util.List;

public class Election {
    int biden , trump = 0;
    List<String> lstVote = new ArrayList<>();
   private static Election instance;
   protected Election(){};
   public static Election Instance(){
       if(instance == null)
           instance = new Election();
       return instance;
   }
   public void vote(Candidate c, String name){
       if(!isVoted(name)){
           if(c == Candidate.JOE_BIDEN)
               biden++;
           else if(c == Candidate.DONALD_TRUMP)
               trump++;
           lstVote.add(name);
       }
   }
   public boolean isVoted(String name){
       for(String s : lstVote){
           if(s == name)
               return true;
       }
       return false;
   }
   public String InKQ(){
       StringBuilder builder = new StringBuilder();
       builder.append("Donald Trump: ").append(trump)
               .append("\nBiden: ").append(biden);
       return builder.toString();
   }

}
