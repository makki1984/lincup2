package com.uh.rachel.util.tableClasses;


import java.sql.Date;

public class eventsTable {
    int eventId;
    String eventName;
    String eventType;
    String eventCity;
    String eventState;
    String eventDate;
    String interest1;
    String interest2;
    String interest3;
    String interest4;


    public eventsTable(int eventId, String eventName, String eventType, String eventCity, String eventState, String eventDate, String interest1, String interest2, String interest3, String interest4) {
        this.eventId = eventId;
        this.eventName = eventName;
        this.eventType = eventType;
        this.eventCity = eventCity;
        this.eventState = eventState;
        this.eventDate = eventDate;
        this.interest1 = interest1;
        this.interest2 = interest2;
        this.interest3 = interest3;
        this.interest4 = interest4;
    }


    public int getEventId() {
        return eventId;
    }

    public String getEventName() {
        return eventName;
    }

    public String getEventType() {
        return eventType;
    }

    public String getEventCity() {
        return eventCity;
    }

    public String getEventState() {
        return eventState;
    }

    public String getEventDate() {
        return eventDate;
    }

    public String getInterest1() {
        return interest1;
    }

    public String getInterest2() {
        return interest2;
    }

    public String getInterest3() {
        return interest3;
    }

    public String getInterest4() {
        return interest4;
    }





    public void setEventId(int eventId) {
        this.eventId = eventId;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }

    public void setEventCity(String eventCity) {
        this.eventCity = eventCity;
    }

    public void setEventState(String eventState) {
        this.eventState = eventState;
    }

    public void setEventDate(String eventDate) {
        this.eventDate = eventDate;
    }

    public void setInterest1(String interest1) {
        this.interest1 = interest1;
    }

    public void setInterest2(String interest2) {
        this.interest2 = interest2;
    }

    public void setInterest3(String interest3) {
        this.interest3 = interest3;
    }

    public void setInterest4(String interest4) {
        this.interest4 = interest4;
    }


}

