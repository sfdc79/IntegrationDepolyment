import { LightningElement } from 'lwc';
import CASE_OBJECT from '@salesforce/schema/Case';
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';

/**
 * Creates Account records.
 */
export default class caseCreationForm extends LightningElement {

    caseObject = CASE_OBJECT;
    myFields = [STATUS_FIELD, ORIGIN_FIELD];

    handleAccountCreated(){
        // Run code when account is created.
    }
}