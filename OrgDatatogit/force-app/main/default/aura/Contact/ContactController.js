({
	doinit : function(component, event, helper) {
        
        var action = component.get('c.getcontactlist');
        
        action.setParams({
            
            accId :component.get('v.recordId'),
        });
        
        action.setCallback(this, function(response) {
            
            var responseValue = response.getReturnValue();
                 console.log(responseValue);
            
            component.set('v.con', responseValue);
             }, 'SUCCESS');
   
		$A.enqueueAction(action, false);
	},
    
    
     conDetails : function(component, event, helper) {
        
        var eventSource = event.getSource(); 
        
        var id = eventSource.get('v.name');
        
        alert(id);
         
         var navEvt = $A.get("e.force:navigateToSObject");
     navEvt.setParams({
      "recordId": id,
      "slideDevName": "detail"
    });
    navEvt.fire();
        
    },
})