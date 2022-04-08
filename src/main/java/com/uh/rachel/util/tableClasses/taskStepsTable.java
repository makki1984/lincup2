package com.uh.rachel.util.tableClasses;


import java.sql.Date;

public class taskStepsTable {
    int taskStepsId;
    int taskId;
    String taskName;
    int memberid;

    public taskStepsTable(int taskStepsId, int taskId, String taskName, int memberid) {

        this.taskStepsId = taskStepsId;
        this.taskId = taskId;
        this.taskName = taskName;
        this.memberid = memberid;


    }


    public int getTaskStepsId() {
        return taskStepsId;
    }

    public int getTaskId() {
        return taskId;
    }

    public String getTaskName() {
        return taskName;
    }

    public int getMemberid() {
        return memberid;
    }




    public void setTaskStepsId(int taskStepsId) {
        this.taskStepsId = taskStepsId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }


}

