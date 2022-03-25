package com.uh.rachel.util.reportClasses;

import com.uh.rachel.util.tableClasses.membersTable;

public class report1 {
    membersTable membersPackage;

    public report1(membersTable membersPackage) {
        this.membersPackage = membersPackage;
    }

    public membersTable getMembersPackage() {
        return membersPackage;
    }

    public void setMembersPackage(membersTable membersPackage) {
        this.membersPackage = membersPackage;
    }
}
