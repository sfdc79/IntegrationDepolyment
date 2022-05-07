import { LightningElement,api } from 'lwc';
import Industry from '@salesforce/schema/Account.Industry';
import Name from '@salesforce/schema/Account.Name';
import BillingAddres from '@salesforce/schema/Account.BillingAddress';
export default class RecordForm extends LightningElement {
Fields = [Name,Industry,BillingAddres];

@api recordId;
@api objectApiName;
}