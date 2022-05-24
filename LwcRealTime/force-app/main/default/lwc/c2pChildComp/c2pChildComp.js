import { LightningElement } from 'lwc';

export default class C2pChildComp extends LightningElement {
    searchValue;
    handleChange(event) {
        this.searchValue = event.target.value;
        // create event
        const custEvent = CustomEvent("getsearchvalue",{
            detail : this.searchValue
        });
        //dispatch event
        this.dispatchEvent(custEvent);
    }
}