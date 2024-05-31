package bt_TH.iterator.CE1;

public class ArrayIterator implements Iterator63{
    ArrayCollection63 collection;
    int index = -1;

    protected ArrayIterator(ArrayCollection63 collection) {
        this.collection = collection;
    }

    @Override
    public Object first() {
        if(collection.count() > 0){
            index = 0;
            return collection.getItem(index);
        }
        return null;
    }

    @Override
    public Object next() {
        return collection.getItem(++index);
    }

    @Override
    public Object current() {
        if(index >= 0)
            return collection.getItem(index);
        return null;
    }

    @Override
    public boolean isDone() {
        return (index == collection.count()-1);
    }
}
