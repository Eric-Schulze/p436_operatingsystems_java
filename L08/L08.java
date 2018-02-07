import java.util.*;

public class L08{
    public static void main(String args[]){
        ArrayList<MyThread> al = createThreadArrayList(args);

        for(MyThread mt : al){
            mt.run();
        }
    }

    private static ArrayList<MyThread> createThreadArrayList(String sa[]){
        ArrayList<MyThread> al = new ArrayList<MyThread>();
        MyThread thread;
        for(String s : sa){
            thread = new MyThread("Thread " + s);
            al.add(thread);
        }

        return al;
    }
}

class MyThread extends Thread{
    public MyThread(String s){
        super(s);
    }

    public void run(){
        System.out.println("Hello, I am " + getName());
    }
}
