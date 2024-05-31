package bt_TH.observer.CA2;

// observer
public class Activity implements Button.IOnClickListener{
    Button button;
    public Activity(Button button) {
        this.button = button;
        // pt dki
        this.button.register(this);
    }
    int cnt = 0;
    public void onClick() {
        cnt++;
        System.out.println("Bạn đã click lần thứ " + cnt);
    }
}
