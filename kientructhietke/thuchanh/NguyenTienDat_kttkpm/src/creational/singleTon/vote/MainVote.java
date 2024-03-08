package creational.singleTon.vote;

public class MainVote {
    public static void main(String[] args) {
        User u1 = new User("Tien Dat");
        User u2 = new User("Ngu Long");
        User u3 = new User("nam");
        User u4 = new User("lam");
        u1.vote(Candidate.DONAL_TRUMP);
        u1.vote(Candidate.DONAL_TRUMP);
        u2.vote(Candidate.JOE_BIDEN);
        u3.vote(Candidate.DONAL_TRUMP);
        u4.vote(Candidate.DONAL_TRUMP);
        Election s = Election.getInstance();
        s.inKQ();
    }
}
