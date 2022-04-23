({
	ListCreate : function(component, event, helper) {
        
        var map =[];
        
        for(var i=0; i<5; i++) {
            
            map.push({
                
                key:i , value:'Test ' +i
            });
        }
		
        component.set('v.Mapvar',map);
	}
})