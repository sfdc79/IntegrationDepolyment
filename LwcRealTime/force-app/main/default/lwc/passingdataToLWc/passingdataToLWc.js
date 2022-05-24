import { LightningElement,wire } from 'lwc';
import accuntList5 from '@salesforce/apex/accListlwc.accuntList5';
export default class PassingdataToLWc extends LightningElement {
    accntList
    @wire(accuntList5) 
         accntHandler({data,error}) {
             if(data) {
                 console.log(data);
                 this.accntList = data.map(item=>{
                  let newType = item.Type === 'Customer - Channel' ? 'Channel' : item.Type === 'Customer - Direct' ? 'Direct' : 'Failed';
                  console.log(newType);
                  return {...item, newType};
                 })
             }
             if(error) {
                 console.error(error);
             }
         }
             
        
}