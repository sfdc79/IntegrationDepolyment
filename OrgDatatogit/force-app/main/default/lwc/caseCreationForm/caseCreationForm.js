import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Case';
import NAME_FIELD from '@salesforce/schema/Case.Origin';
import WEBSITE_FIELD from '@salesforce/schema/Case.Status';
import PHONE_FIELD from '@salesforce/schema/Case.Subject';
import Company from '@salesforce/schema/Lead.Company';
import SystemModstamp from '@salesforce/schema/Account.SystemModstamp';

/**
 * Creates Account records.
 */
export default class AccountCreator extends LightningElement {

    CaseObject = CASE_OBJECT;
    myFields = [ORIGIN_FIELD, STATUS_FIELD, SUBJECT_FIELD];

    handleAccountCreated(){
       alert('Account Created ')
       SystemModstamp.debug(myFields);
    }
}