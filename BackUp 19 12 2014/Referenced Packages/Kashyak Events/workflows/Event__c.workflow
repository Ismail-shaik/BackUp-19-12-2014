<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>KEEventCancelNotification</fullName>
        <description>KE Event Cancel Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationCancelNotification</template>
    </alerts>
    <alerts>
        <fullName>KEEventStatusUpdateSubmittedToUnderReview</fullName>
        <description>KE Event Status Update - Submitted to Under Review</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationReviewNotification</template>
    </alerts>
    <alerts>
        <fullName>KENotifyAdminOnSubmittingRegistration</fullName>
        <description>KE Notify Admin On Submitting Registration</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KEEventRegistrationAdminNotification</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationConfirmationNotification</fullName>
        <description>KE Registration Confirmation Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationConfirmationNotification</template>
    </alerts>
    <rules>
        <fullName>KE  Event Status - Submitted</fullName>
        <actions>
            <name>KENotifyAdminOnSubmittingRegistration</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Event__c.Status__c</field>
            <operation>equals</operation>
            <value>Submitted</value>
        </criteriaItems>
        <description>Workflow Triggers on When Status equals to Submitted</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>KE Event Status Update - Submitted to Under Review</fullName>
        <actions>
            <name>KEEventStatusUpdateSubmittedToUnderReview</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Workflow Trigger on Event Status Update - Submitted to Under Review</description>
        <formula>And(ISPICKVAL(PRIORVALUE(Status__c), &apos;submitted&apos;),   ISPICKVAL(Status__c, &apos;Under Review&apos;),  RecordType.DeveloperName  = &apos;Reservation&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>KE Event Status Update - Under Review to Canceled</fullName>
        <actions>
            <name>KEEventCancelNotification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Workflow Trigger on Event Status Update -  Under Review to Canceled</description>
        <formula>And(ISPICKVAL(PRIORVALUE(Status__c), &apos;Under Review&apos;),   ISPICKVAL(Status__c, &apos;Canceled&apos;),  RecordType.DeveloperName  = &apos;Reservation&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>KE Event Status Update - Under Review to Confirmed</fullName>
        <actions>
            <name>KERegistrationConfirmationNotification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Workflow Trigger on Event Status Under Review- Confirmed</description>
        <formula>And(ISPICKVAL(PRIORVALUE(Status__c), &apos;Under Review&apos;),   ISPICKVAL(Status__c, &apos;Confirmed&apos;),  RecordType.DeveloperName  = &apos;Reservation&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
