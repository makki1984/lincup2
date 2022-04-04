package com.uh.rachel.util.tableClasses;

public class eventScheduleTable {

    int eventScheduleId;
    int eventId;
    int memberid;
    String eventName;
    String eventType;



    public eventScheduleTable(int eventScheduleId, int eventId, int memberid, String eventName, String eventType) {
        this.eventScheduleId = eventScheduleId;
        this.eventId = eventId;
        this.memberid = memberid;
        this.eventName = eventName;
        this.eventType = eventType;


    }

    public int getEventScheduleId() {
        return eventScheduleId;
    }

    public int getEventId() {
        return eventId;
    }

    public int getMemberid() {
        return memberid;
    }

    public String getEventName() {
        return eventName;
    }

    public String getEventType() {
        return eventType;
    }



    public void setEventScheduleId(int eventScheduleId) {
        this.eventScheduleId = eventScheduleId;
    }

    public void setEventId(int eventId) {
        this.eventId = eventId;
    }

    public void setMemberid(int memberid) { this.memberid = memberid;}

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }


}
