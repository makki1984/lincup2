package com.uh.rachel.util.tableClasses;

public class studentOrgTable {
    int orgId;
    String city;
    String state;
    String university;
    String orgName;
    String interest1;
    String interest2;
    String interest3;
    String interest4;


    public studentOrgTable(int orgId, String city, String state, String university, String orgName, String interest1, String interest2, String interest3, String interest4) {
        this.orgId = orgId;
        this.city = city;
        this.state = state;
        this.university = university;
        this.orgName = orgName;
        this.interest1 = interest1;
        this.interest2 = interest2;
        this.interest3 = interest3;
        this.interest4 = interest4;
    }


    public int getOrgId() {
        return orgId;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public String getUniversity() {
        return university;
    }

    public String getOrgName() {
        return orgName;
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





    public void setOrgId(int orgId) {
        this.orgId = orgId;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
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

