package on_gk.builder.A7;

public class Computer {
    String CPU, Ram, Screen, HardDisk;
    private Computer(Builder b){
        this.CPU = b.CPU;
        this.Ram = b.Ram;
        this.Screen = b.Screen;
        this.HardDisk = b.HardDisk;
    }
    public static class Builder{
        String CPU, Ram, Screen, HardDisk;
        public Builder addCPU(String cpu){
            CPU = cpu;
            return this;
        }
        public Builder addRam(String ram){
            Ram = ram;
            return this;
        }
        public Builder addScreen(String screen){
            Screen = screen;
            return this;
        }
        public Builder addHardDisk(String hd){
            HardDisk = hd;
            return this;
        }
        public Computer build(){
            return new Computer(this);
        }

    }
    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("CPU: ").append(CPU)
                .append("\nRam: ").append(Ram)
                .append("\nScreen: ").append(Screen)
                .append("\nHardDisk: ").append(HardDisk);
        return builder.toString();
    }
}
