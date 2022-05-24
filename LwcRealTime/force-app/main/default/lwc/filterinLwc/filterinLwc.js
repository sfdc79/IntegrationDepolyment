import { LightningElement,wire } from 'lwc';
import getconLists from '@salesforce/apex/Filter.getconList'
import Id from '@salesforce/schema/Account.Id';
export default class FilterinLwc extends LightningElement {
Heading=["Id","Name","Email", "Phone" ];
Filterbyvalue = '';
fullDatatable = [];
filterData = [];
@wire(getconLists)
contactHandler({data,error}) {
if(data) {
    console.log(data);
    this.fullDatatable = data;
    this.filterData = [...this.fullDatatable];
    
}
if(error) {
    console.log(error);
}


}

get Filterbyoption() {
return [
    {label : "ALL", value : "ALL", },
    {label : "Id", value : "Id", },
    {label : "Name", value : "Name", },
    {label : "Phone", value : "Phone", },
    {label : "Email", value : "Email", },
];

}
handleChange(event) {
    this.Filterbyvalue = event.target.value;
    console.log(this.Filterbyvalue);
}


handleInput(event) {
const result = event.target.value;
//console.log(result);
if(result) {
    window.clearTimeout(this.timer);
    this.timer = window.setTimeout(()=>{
       this.filterData = this.fullDatatable.filter(eachObj=>{
                if(this.Filterbyvalue === 'ALL') {
            // Object.keys(eachObj) = ["Id","Name","Email", "Phone" ]
                //Object.keys(eachObj).some(key=> returns true or false
               return Object.keys(eachObj).some(key=>{
                      return eachObj[key].toLowerCase().includes(result);
               });
            }
             else {
                  const val = eachObj.this.Filterbyvalue ? eachObj.this.Filterbyvalue : 'not working';
               console.log('eachObj' + eachObj);
                //console.log(val.toLowerCase().includes(result));
               return val.toLowerCase().includes(result);
            }
   })
                console.log(this.filterData);
               
           },1000)         
} 
else {
    this.filterData = [...this.fullDatatable];
}
}
}