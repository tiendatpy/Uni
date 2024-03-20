package structural.composite;

public class MainFile {
    public static void main(String[] args) {
        AbstractFile f1 = new Folder("Tai lieu", "14/3");
        AbstractFile file1 = new File("CreationalPattern.pdf", "14/3");
        AbstractFile file2 = new File("StructuralPattern.pptx", "14/3");
        f1.add(file1);
        f1.add(file2);
        System.out.println(f1.getStringTreeFolder());

    }
}
