package bt_TH.observer.CA1;

import java.util.ArrayList;
import java.util.List;

public class MyStream<T>{
    List<MyStreamListener<T>> listeners = new ArrayList<>();
    public void addListeners(MyStreamListener<T> listener){
        listeners.add(listener);
    }
    public void addEvent(T t){
        for(MyStreamListener<T> l : listeners)
            l.listen(t);
    }


}
