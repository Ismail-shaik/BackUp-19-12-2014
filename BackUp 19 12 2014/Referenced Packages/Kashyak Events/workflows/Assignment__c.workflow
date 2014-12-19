<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>KEAssignStaffAcceptEmailNotification</fullName>
        <description>KE AssignStaff Accept Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Resource__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KEAssignStaffNotification</template>
    </alerts>
    <rules>
        <fullName>KE Assignment Status Assigned</fullName>
        <actions>
            <name>KEAssignStaffAcceptEmailNotification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Assignment__c.Status__c</field>
            <operation>equals</operation>
            <value>Assigned</value>
        </criteriaItems>
        <description>Workflow Trigger  for Status  Assigned</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
