package creational.builder;
//1. lop can tao doi tuong, viec tao doi tuong gom nhieu thanh phan thong qua nhieu buoc
public class Computer {
    //  2.  Xac dinh cac thanh phan phuc tap can khoi tao thong qua cac buoc
    String CPU, RAM, storage, screen;
    //    4. Viet ham khoi tao
    private Computer (Builder b){
        CPU = b.CPU;
        RAM = b.RAM;
        storage = b.storage;
        screen = b.screen;
    }

    public static class Builder{
        String CPU, RAM, storage, screen;
        public Builder addCPU(String cpu){
            CPU = cpu;
            return this;
        }
        public Builder addRam(String ram){
            RAM = ram;
            return this;
        }
        public Builder addStorage(String stor){
            storage = stor;
            return this;
        }
        public Builder addScreen(String s){
            screen = s;
            return this;
        }
        public Computer build(){
            return new Computer(this);
        }
    }
    @Override
    public String toString(){
        return "CPU: " + this.CPU + "\nRAM: " + this.RAM + "\nStorage: " + this.storage+ "\nScreen: "+ this.screen;
    }

}
