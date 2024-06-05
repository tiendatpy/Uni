package on_ck.observer.CA3;

import java.util.ArrayList;
import java.util.List;

public class TiGia {
    List<NhaDauTuListener> listeners = new ArrayList<>();
    void attach(NhaDauTuListener ndt){
        listeners.add(ndt);
    }
    void dettach(NhaDauTuListener ndt){
        listeners.remove(ndt);
    }

    void capNhatTiGia(float delta){
        for ( var ndt : listeners){
            ndt.update(delta);
        }
    }

}
