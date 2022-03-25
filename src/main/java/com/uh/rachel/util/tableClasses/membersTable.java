package com.uh.rachel.util.tableClasses;

import java.sql.Date;

public class membersTable {
    int memberid;
    String firstName;
    String lastName;
    String dob;
    String email;
    String pass;
    String highSchool;
    String afterGraduation;
    String churchID;
    String interest1;
    String interest2;
    String interest3;
    String interest4;
    String phone;
    int orgid;
    int schoolid;
    int adminId;

    public membersTable(int memberid, String firstName, String lastName, String dob, String email, String pass, String highSchool, String afterGraduation, String churchID, String interest1, String interest2, String interest3, String interest4, String phone, int orgid, int schoolid, int adminId) {
        this.memberid = memberid;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.email = email;
        this.pass = pass;
        this.highSchool = highSchool;
        this.afterGraduation = afterGraduation;
        this.churchID = churchID;
        this.interest1 = interest1;
        this.interest2 = interest2;
        this.interest3 = interest3;
        this.interest4 = interest4;
        this.phone = phone;
        this.orgid = orgid;
        this.schoolid = schoolid;
        this.adminId = adminId;
    }

    public membersTable(int memberid, String firstName, String lastName) {
        this.memberid = memberid;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public int getMemberid() {
        return memberid;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getDob() {
        return dob;
    }

    public String getEmail() {
        return email;
    }

    public String getPass() {
        return pass;
    }

    public String getHighSchool() {
        return highSchool;
    }

    public String getAfterGraduation() {
        return afterGraduation;
    }

    public String getChurchID() {
        return churchID;
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

    public String getPhone() {
        return phone;
    }

    public int getOrgid() {
        return orgid;
    }

    public int getSchoolid() {
        return schoolid;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setHighSchool(String highSchool) {
        this.highSchool = highSchool;
    }

    public void setAfterGraduation(String afterGraduation) {
        this.afterGraduation = afterGraduation;
    }

    public void setChurchID(String churchID) {
        this.churchID = churchID;
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

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setOrgid(int orgid) {
        this.orgid = orgid;
    }

    public void setSchoolid(int schoolid) {
        this.schoolid = schoolid;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }
}
