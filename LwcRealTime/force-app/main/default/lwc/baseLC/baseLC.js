import { LightningElement,api } from 'lwc';

export default class BaseLC extends LightningElement {
    @api
    recordId
    @api
    objectApiName
    fields = ['AccountId', 'Name', 'Title', 'Phone', 'Email']
}