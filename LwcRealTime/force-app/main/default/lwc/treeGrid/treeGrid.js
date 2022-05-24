import { LightningElement,wire } from 'lwc';
import accuntwithConts from '@salesforce/apex/accountwithContacts.accuntwithConts';

export default class TreeGrid extends LightningElement {
    // array object
    gridData = [];
      @wire(accuntwithConts)
            accntwithcontsResult({data,error}) {
                 if(data) {
                     
                     this.formatGriddata(data);
                       console.log(data);
                 }
                 if(error) {
                        console.error(error)
                 }
            }
            gridColumns = [
                {
                    label :'Account Name',
                    fieldName :'Name',
                    type :'Text'

                },
                {
                    label :'Phone Num',
                    fieldName :'Phone',
                    type :'Text'

                },
                {
                    label :'Account Website',
                    fieldName :'Website',
                    type :'url'

                }
            ];
 formatGriddata(result) {
  this.gridData =   result.map(item=>{
         const {Contacts, ...Accounts} = item;
         console.log('...item>>>>' + item)
         console.log('...Contacts>>>>' + Contacts)
         return {...Accounts, "_childern":Contacts}

     })
     console.log(this.gridData);
 }
}