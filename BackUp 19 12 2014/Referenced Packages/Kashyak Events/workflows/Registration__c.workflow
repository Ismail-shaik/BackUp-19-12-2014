<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>KERegistrationCheckInEmailNotification</fullName>
        <description>KE Registration Check In Email Notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>jabee.cloud@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KEEventRegistrationCheckInNotification</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnCheckStatusApproved</fullName>
        <description>KE Registration On Check Status - Approved</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationCheckNotificationForApproved</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnCheckStatusPending</fullName>
        <description>KE Registration On Check Status - Pending</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationCheckNotificationForPending</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnCreditCardStatusApproved</fullName>
        <description>KE Registration On Credit Card Status - Approved</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationCreditCardNotification</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnCreditCardStatusApprovedforInternal</fullName>
        <description>KE Registration  - Approved for Internal</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationPendingNotification</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnFree</fullName>
        <description>KE Registration On Free</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationonFree</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnStatusApprovedFullScholarship</fullName>
        <description>KE Registration On Status-Approved Full  Scholarship</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationonStatusFullScholarship</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnStatusApprovedPartialScholarship</fullName>
        <description>KE Registration On Status- Approved Partial  Scholarship</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationonStatusPartialScholarship</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnStatusCancel</fullName>
        <description>KE Registration On  Status - Cancel</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationCancelledNotification</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnStatusPending</fullName>
        <description>KE Registration On Status - Pending</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationPendingNotification</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationOnTitle1True</fullName>
        <description>KE Registration On Title1 True</description>
        <protected>false</protected>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationPendingNotification</template>
    </alerts>
    <alerts>
        <fullName>KERegistrationWhenEventIsFree</fullName>
        <description>KERegistrationWhenEventIsFree</description>
        <protected>false</protected>
        <recipients>
            <field>Attendee__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Organizer__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventTemplates/KERegistrationCheckNotificationForApprovedWhenEventIsFree</template>
    </alerts>
    <fieldUpdates>
        <fullName>KERegistrationUpdateStatusComplete</fullName>
        <description>Update Registration&apos;s Status to Complete</description>
        <field>Status__c</field>
        <literalValue>Completed</literalValue>
        <name>KE Registration Update Status - Complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>KE  Registration Check In - True</fullName>
        <actions>
            <name>KERegistrationCheckInEmailNotification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.CheckIn__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Workflow Trigger on Registration Check In Equals to True</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration  on Payment Change</fullName>
        <actions>
            <name>KERegistrationUpdateStatusComplete</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Workflows Trigger on Change the Payment</description>
        <formula>PaymentRecived__c &gt; 0</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration For Status Cancel</fullName>
        <actions>
            <name>KERegistrationOnStatusCancel</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Cancled</value>
        </criteriaItems>
        <description>Workflows Trigger on Status Cancel</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration Status Full Scholarship</fullName>
        <actions>
            <name>KERegistrationOnStatusApprovedFullScholarship</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved: Full Scholarship</value>
        </criteriaItems>
        <description>Work flow Triggers on Registration Email To Organizer</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration Status Partial Scholarship</fullName>
        <actions>
            <name>KERegistrationOnStatusApprovedPartialScholarship</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved: Partial Scholarship</value>
        </criteriaItems>
        <description>Work flow Triggers on Registration Email To Organizer</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration Status Pending</fullName>
        <actions>
            <name>KERegistrationOnStatusPending</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.EventRecordType__c</field>
            <operation>equals</operation>
            <value>Internal</value>
        </criteriaItems>
        <description>Workflows Trigger on Status Pending</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration for Internal</fullName>
        <actions>
            <name>KERegistrationOnCreditCardStatusApprovedforInternal</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.EventRecordType__c</field>
            <operation>equals</operation>
            <value>Internal</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <description>KE Registration for Internal</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration on Check Approved</fullName>
        <actions>
            <name>KERegistrationOnCheckStatusApproved</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.PaymentType__c</field>
            <operation>equals</operation>
            <value>Check,Cash</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.Title1__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.EventRecordType__c</field>
            <operation>equals</operation>
            <value>Event,Internal,Reservation</value>
        </criteriaItems>
        <description>Workflows Trigger on Payment Type Check Approved</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration on Check Pending</fullName>
        <actions>
            <name>KERegistrationOnCheckStatusPending</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.PaymentType__c</field>
            <operation>equals</operation>
            <value>Cash,Check,Pay At The Door</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.EventRecordType__c</field>
            <operation>equals</operation>
            <value>Event,Reservation,Training</value>
        </criteriaItems>
        <description>Workflows Trigger on Payment Type Check Pending</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration on Credit Card</fullName>
        <actions>
            <name>KERegistrationOnCreditCardStatusApproved</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.PaymentType__c</field>
            <operation>equals</operation>
            <value>Credit Card(online)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.Title1__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.EventRecordType__c</field>
            <operation>equals</operation>
            <value>Event,Reservation,Training</value>
        </criteriaItems>
        <description>Workflows Trigger on Payment Type Credit Card</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration on Free</fullName>
        <actions>
            <name>KERegistrationOnFree</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Event__c.IsFree__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Workflows Trigger on Free Event</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KE Registration on Title1</fullName>
        <actions>
            <name>KERegistrationOnTitle1True</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.Title1__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <description>Workflows Trigger on Title1 True</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>KERegistrationWhenEventIsFree</fullName>
        <actions>
            <name>KERegistrationWhenEventIsFree</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Event__c.IsFree__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Registration__c.EventRecordType__c</field>
            <operation>equals</operation>
            <value>Event,Internal,Reservation,Training</value>
        </criteriaItems>
        <description>KERegistrationWhenEventIsFree</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
