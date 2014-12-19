<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>KEAdministratorEmailNotificationOnEventEnquiry</fullName>
        <description>KE Administrator Email Notification On Event Enquiry</description>
        <protected>false</protected>
        <recipients>
            <recipient>jabee.cloud@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KEEventEnquiryAdminNotification</template>
    </alerts>
    <alerts>
        <fullName>KEUserEmailNotificationOnEventEnquiry</fullName>
        <description>KE User Email Notification On Event Enquiry</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KEEventEnquiryUserNotification</template>
    </alerts>
    <rules>
        <fullName>KE Contact Lead Source Set to Event Enquirey</fullName>
        <actions>
            <name>KEAdministratorEmailNotificationOnEventEnquiry</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>KEUserEmailNotificationOnEventEnquiry</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.LeadSource</field>
            <operation>equals</operation>
            <value>Event Enquiry</value>
        </criteriaItems>
        <description>Workflow Rule triggered when a new contact created with lead source as &quot;Event Enquiry&quot;</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Enquiry_About</fullName>
        <assignedTo>jabee.cloud@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Comments: Please call me , I have 200 students can I have a special discount????</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Contact.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Enquiry About</subject>
    </tasks>
</Workflow>
