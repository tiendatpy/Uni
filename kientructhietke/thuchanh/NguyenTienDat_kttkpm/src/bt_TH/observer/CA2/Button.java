package bt_TH.observer.CA2;


// subject
public class Button {

    IOnClickListener counter;

    public void register(IOnClickListener counter){
        this.counter = counter;
    }

    public interface IOnClickListener{
        void onClick();
    }
}
