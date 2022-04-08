//What events does this member have connected to them?
//What members are attending what event?

package com.uh.rachel.util.reportClasses;

import com.uh.rachel.util.tableClasses.membersTable;
import com.uh.rachel.util.tableClasses.eventsTable;

public class report1 {
    membersTable membersPackage;
    eventsTable eventsPackage;

    public report1(membersTable membersPackage, eventsTable eventsPackage) {
        this.membersPackage = membersPackage;
        this.eventsPackage = eventsPackage;
    }

    public membersTable getMembersPackage() {
        return membersPackage;
    }

    public eventsTable getEventsPackage() {
        return eventsPackage;
    }

    public void setMembersPackage(membersTable membersPackage) {
        this.membersPackage = membersPackage;
    }

    public void setEventsPackage(eventsTable eventsPackage) {
        this.eventsPackage = eventsPackage;
    }
}
