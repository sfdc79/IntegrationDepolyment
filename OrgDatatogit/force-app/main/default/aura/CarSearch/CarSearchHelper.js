({
	helperSearchButtonClick : function() {
		alert('Search Button Clicked');
	},
    
    
    carType : function(component,helper) {
		
        var action = component.get("c.getCarTypes");
        alert(action);
        action.setCallback(this, function(data) {
       
        var state = data.getState();
        
        if(state === "SUCCESS") {
            
            component.set('v.carTypes', data.getReturnvalue());
            
            alert(v.carTypes);
        }
        
        else if(state === "ERROR") {
            
            alert('Unknown Error');
        }
        
    }); 
        
        $A.enqueueAction(action);
    }
})