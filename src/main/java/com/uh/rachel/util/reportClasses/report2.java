//What are the members bigger tasks and small tasks for an event?
//What members are assigned to what bigger tasks?
//What bigger tasks are assigned to what events?
//What smaller steps are assigned to what bigger task?

package com.uh.rachel.util.reportClasses;

import com.uh.rachel.util.tableClasses.membersTable;
import com.uh.rachel.util.tableClasses.eventsTable;
import com.uh.rachel.util.tableClasses.tasksTable;
import com.uh.rachel.util.tableClasses.taskStepsTable;

public class report2 {
    membersTable membersPackage;
    eventsTable eventsPackage;
    tasksTable tasksPackage;
    taskStepsTable taskStepsPackage;

    public report2(membersTable membersPackage, eventsTable eventsPackage, tasksTable tasksPackage, taskStepsTable taskStepsPackage) {
        this.membersPackage = membersPackage;
        this.eventsPackage = eventsPackage;
        this.tasksPackage = tasksPackage;
        this.taskStepsPackage = taskStepsPackage;
    }

    public report2(membersTable membersPackage, tasksTable tasksPackage) {
        this.membersPackage = membersPackage;
        this.tasksPackage = tasksPackage;
    }

    public report2(eventsTable eventsPackage, tasksTable tasksPackage) {
        this.eventsPackage = eventsPackage;
        this.tasksPackage = tasksPackage;
    }

    public report2(tasksTable tasksPackage, taskStepsTable taskStepsPackage) {
        this.tasksPackage = tasksPackage;
        this.taskStepsPackage = taskStepsPackage;
    }

    public membersTable getMembersPackage() {
        return membersPackage;
    }

    public eventsTable getEventsPackage() {
        return eventsPackage;
    }

    public tasksTable getTasksPackage() {
        return tasksPackage;
    }

    public taskStepsTable getTaskStepsPackage() {
        return taskStepsPackage;
    }

    public void setMembersPackage(membersTable membersPackage) {
        this.membersPackage = membersPackage;
    }

    public void setEventsPackage(eventsTable eventsPackage) {
        this.eventsPackage = eventsPackage;
    }

    public void setTasksPackage(tasksTable tasksPackage) {
        this.tasksPackage = tasksPackage;
    }

    public void setTaskStepsPackage(taskStepsTable taskStepsPackage) {
        this.taskStepsPackage = taskStepsPackage;
    }
}
