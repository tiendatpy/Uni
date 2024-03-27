package on_gk.composite.b3;

import java.util.ArrayList;
import java.util.List;

public class Folder extends AbstractFile{
    List<AbstractFile> children = new ArrayList<>();

    public Folder(String ten, String ngayTao) {
        super(ten, ngayTao);
    }

    @Override
    void addItem(AbstractFile f) {
        children.add(f);
        f.path = this.path + "/" + f.path;
    }

    @Override
    void removeItem(AbstractFile f) {
        children.remove(f);
    }

    @Override
    String getStringTreeFolder() {
        StringBuilder builder = new StringBuilder();
        builder.append(this.ten).append("\n");
        for(AbstractFile x : children)
            builder.append(" ").append(x.getStringTreeFolder()).append("\n");
        return builder.toString();
    }
}
