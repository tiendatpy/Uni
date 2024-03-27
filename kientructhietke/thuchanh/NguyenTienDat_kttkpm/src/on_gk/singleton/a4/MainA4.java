package on_gk.singleton.a4;

public class MainA4 {
    public static void main(String[] args) {
        User u1 = new User("Ten dat");
        User u2 = new User("Anh Quan");
        u1.vote(Candidate.JOE_BIDEN);
        u1.vote(Candidate.DONALD_TRUMP);
        u2.vote(Candidate.JOE_BIDEN);
        u1.InKQ();
    }

}
