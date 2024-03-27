package on_gk.composite.De2;

import java.util.ArrayList;
import java.util.List;

public class GroupDAT extends AbstractProfileDAT{
    String name;
    List<AbstractProfileDAT> nvs;

    public GroupDAT(String name) {
        this.name = name;
        this.nvs = new ArrayList<>();
    }

    @Override
    void addNVDAT(AbstractProfileDAT p) {
        nvs.add(p);
    }

    @Override
    void removeNVDAT(AbstractProfileDAT p) {
        nvs.remove(p);
    }

    @Override
    String display(String sep) {
        StringBuilder builder = new StringBuilder();
        builder.append("Tên: ").append(name);
        for(var nv : nvs){
            builder.append("\n").append(sep).append(nv.display("    " + sep));
        }
        return builder.toString();
    }
}
