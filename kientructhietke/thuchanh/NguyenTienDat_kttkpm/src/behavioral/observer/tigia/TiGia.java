package behavioral.observer.tigia;

import java.util.ArrayList;
import java.util.List;

// subject
public class TiGia {

    // co the tach ra thanh 1 lop abstract
    List<TiGiaObserver> observers = new ArrayList<TiGiaObserver>();
    public void attach(TiGiaObserver observer){
        observers.add(observer);
    }

    public void dettach(TiGiaObserver observer){
        observers.remove(observer);
    }
    //
    public void capNhatTiGia(float delta){
        for(TiGiaObserver observer : observers){
            observer.update(delta);
        }
    }
}
