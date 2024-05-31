package bt_TH.iterator.CE1;

public class MainCE1 {
    public static void main(String[] args) {
        ArrayCollection63 arr = new ArrayCollection63();
        Iterator63 iterator = arr.createIterator();
        while (!iterator.isDone()){
            System.out.println(iterator.next());
        }
    }
}
