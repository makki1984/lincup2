//What members requested to join what org?
//What orgs have what members (profile popup)?

package com.uh.rachel.util.reportClasses;

import com.uh.rachel.util.tableClasses.membersTable;
import com.uh.rachel.util.tableClasses.requestsTable;
import com.uh.rachel.util.tableClasses.studentOrgTable;

public class report3 {
    membersTable membersPackage;
    requestsTable requestsPackage;
    studentOrgTable studentOrgPackage;

    public report3(requestsTable requestsPackage, membersTable membersPackage,studentOrgTable studentOrgPackage) {
        this.membersPackage = membersPackage;
        this.requestsPackage = requestsPackage;
        this.studentOrgPackage = studentOrgPackage;
    }


    public requestsTable getRequestsPackage() {
        return requestsPackage;
    }
    public membersTable getMembersPackage() {
        return membersPackage;
    }
    public studentOrgTable getStudentOrgPackage() {
        return studentOrgPackage;
    }



    public void setRequestsPackage(requestsTable requestsPackage) {
        this.requestsPackage = requestsPackage;
    }
    public void setMembersPackage(membersTable membersPackage) {
        this.membersPackage = membersPackage;
    }

    public void setStudentOrgPackage(studentOrgTable studentOrgPackage) {
        this.studentOrgPackage = studentOrgPackage;
    }
}
