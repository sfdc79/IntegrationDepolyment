import { LightningElement, track } from 'lwc';

export default class C2pParentComp extends LightningElement {
   @track searchvalue
    handleserachvalue(event) {
         this.searchvalue = event.details;
    }
}