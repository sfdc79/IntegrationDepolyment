({
	Trail: function(component, event, helper) {
        
        alert(component.isValid());
		
        alert(component.getName());
        
        alert(component.get('v.Pk'));
        
        component.set('v.Pk', "Test value");
        
        var comp = component.find('testinput');
        
        alert(comp.get('v.value'));
	}
})