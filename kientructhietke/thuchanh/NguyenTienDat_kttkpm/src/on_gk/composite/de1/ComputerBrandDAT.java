package on_gk.composite.de1;

import java.util.ArrayList;
import java.util.List;

public class ComputerBrandDAT extends AbstractComputerDAT{
    String nameDAT;
    List<AbstractComputerDAT> comsDAT;

    public ComputerBrandDAT(String nameDAT) {
        this.nameDAT = nameDAT;
        this.comsDAT = new ArrayList<>();
    }

    @Override
    void addComDAT(AbstractComputerDAT c) {
        comsDAT.add(c);
    }

    @Override
    void removeComDAT(AbstractComputerDAT c) {
        comsDAT.remove(c);
    }

    @Override
    String display(String space) {
        StringBuilder builder = new StringBuilder();
        builder.append(nameDAT);
        for(var com : comsDAT){
            builder.append("\n").append(space).append(com.display("    " + space));
        }
        return builder.toString();
    }
}
