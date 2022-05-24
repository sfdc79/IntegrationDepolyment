import { LightningElement } from 'lwc';

export default class ResetLightningInput extends LightningElement {

    handleResetAll() {
        this.template.querySelectorAll('lightning-input').forEach(element => {
          if(element.type === 'checkbox' || element.type === 'checkbox-button'){
              element.checked = false;
            }else{
              element.value = null;
            }  
            console.log(element.type);     
          });
    }
    handleResetCityField(){
        this.template.querySelector('lightning-input[data-name="City"]').value = null;    
      }
      handleResetUsingDataId(){
        this.template.querySelectorAll('lightning-input[data-id="reset"]').forEach(element => {
          element.value = null;
        });
      }
      handleResetCheckbox(){
        this.template.querySelector('lightning-input[data-name="active"]').checked = false; 
      }
}