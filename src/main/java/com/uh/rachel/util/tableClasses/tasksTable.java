package com.uh.rachel.util.tableClasses;


import java.sql.Date;

public class tasksTable {

    int taskId;
    String taskName;
    String taskDate;
    String description;
    int memberid;
    int eventId;
    String status;


    public tasksTable(int taskId, String taskName, String taskDate, String description, int memberid, int eventId, String status) {
        this.taskId = taskId;
        this.taskName = taskName;
        this.taskDate = taskDate;
        this.description = description;
        this.memberid = memberid;
        this.eventId = eventId;
        this.status = status;
    }


    public int getTaskId() {
        return taskId;
    }

    public String getTaskName() {
        return taskName;
    }

    public String getTaskDate() {
        return taskDate;
    }

    public String getDescription() {
        return description;
    }

    public int getMemberid() {
        return memberid;
    }

    public int getEventId() {
        return eventId;
    }

    public String getStatus() {
        return status;
    }





    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public void setTaskDate(String taskDate) {
        this.taskDate = taskDate;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }

    public void setEventId(int eventId) {
        this.eventId = eventId;
    }

    public void setStatus(String status) {
        this.status = status;
    }


}

