package on_gk.singleton.offical;

public class Main {
    public static void main(String[] args) {
        User u1 = new User("tiendat","123");
        User u2 = new User("tiendat2","123");

        User u3 = new User("tiendat3","123");

        Login.getInstance().add(u1);
        Login.getInstance().add(u2);

        Login.getInstance().Login(u3);
        System.out.println(Login.getInstance());
        Login.getInstance().logout();
        System.out.println(Login.getInstance());

    }
}
