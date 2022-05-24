import { LightningElement , api} from 'lwc';

export default class SetterChild extends LightningElement {
    finaldetails
   @api get childdetails() {
        return this.finaldetails
   }
   set childdetails(values) {
       let newage = values.Age * 2;
       this.finaldetails = { ...values, Age:newage, "location" : "West Godavari"}

   }
}