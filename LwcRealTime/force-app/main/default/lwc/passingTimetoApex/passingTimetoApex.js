import { LightningElement, wire } from 'lwc';
import timefromlwcbyuser from "@salesforce/apex/TimeFromLwc.timefromlwcbyuser";

export default class PassingTimetoApex extends LightningElement {
    pasingdata = '';  
    @wire(timefromlwcbyuser, { inputtime :  '$pasingdata' })
     TimeRecevied({data, error}) {
         if(data) {
             console.log('data '+'time' + data);
         }
         else if(error){
            console.log(error);
         }
     }
    
    handleClick(event) {
        //let input = this.template.querySelector('lightning-input');
         const Selectedinputtime = event.target.value;
        this.pasingdata = Selectedinputtime;
        console.log(this.pasingdata);
        
     }
    
     
}