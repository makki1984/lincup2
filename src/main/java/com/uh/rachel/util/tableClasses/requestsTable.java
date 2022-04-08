package com.uh.rachel.util.tableClasses;

public class requestsTable {

    int requestId;
    int orgId;
    int memberid;

    public requestsTable(int requestId, int orgId, int memberid) {

        this.requestId = requestId;
        this.orgId = orgId;
        this.memberid = memberid;
    }


    public int getRequestId() {
        return requestId;
    }

    public int getOrgId() {
        return orgId;
    }

    public int getMemberid() {
        return memberid;
    }

    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }

    public void setOrgId(int orgId) {
        this.orgId = orgId;
    }

    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }

}
