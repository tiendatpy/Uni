package on_gk.composite.de1;

public class ComputerDAT extends AbstractComputerDAT{
    String CPU, RAM, Storage, Screen;
    double giaBan;
    private ComputerDAT(Builder b){
        this.CPU = b.CPU;
        this.RAM = b.RAM;
        this.Storage = b.Storage;
        this.Screen = b.Screen;
        this.giaBan = b.giaBan;
    }

    public static class Builder{
        String CPU, RAM, Storage, Screen;
        double giaBan;

        public Builder setCPU(String cpu) {
            CPU = cpu;
            return this;
        }

        public Builder setRAM(String ram) {
            RAM = ram;
            return this;

        }

        public Builder setStorage(String storage) {
            Storage = storage;
            return this;

        }

        public Builder setScreen(String screen) {
            Screen = screen;
            return this;

        }

        public Builder setGiaBan(double giaBan) {
            this.giaBan = giaBan;
            return this;

        }

        public ComputerDAT build(){
            return new ComputerDAT(this);
        }
    }




    @Override
    void addComDAT(AbstractComputerDAT c) {

    }

    @Override
    void removeComDAT(AbstractComputerDAT c) {

    }
    @Override
    String display(String space) {
        StringBuilder builder = new StringBuilder();
        builder.append("CPU: ").append(CPU)
                .append(" ,RAM: ").append(RAM)
                .append(" ,Storage: ").append(Storage)
                .append(" ,Screen: ").append(Screen)
                .append(" ,Giá bán: ").append(giaBan);
        return builder.toString();
    }
}
