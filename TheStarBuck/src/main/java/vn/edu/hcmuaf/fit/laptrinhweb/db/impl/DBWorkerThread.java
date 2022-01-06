package vn.edu.hcmuaf.fit.laptrinhweb.db.impl;

import java.util.concurrent.CountDownLatch;

public class DBWorkerThread extends Thread{
    private String taskName;
    private CountDownLatch latch;
    public DBWorkerThread(String taskName,CountDownLatch latch){
        this.taskName = taskName;
        this.latch = latch;
    }

    @Override
    public void run() {
        execute();
        latch.countDown();
    }

    private void execute() {
    }
}
