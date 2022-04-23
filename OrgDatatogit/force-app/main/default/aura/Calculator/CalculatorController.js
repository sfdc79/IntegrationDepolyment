({
	AdditionOperation : function(component, event, helper) {
        var num1 = component.get('v.input1');
        var num2 = component.get('v.input2');
        
        component.set('v.output', parseInt(num1)+parseInt(num2));
	},
    
    MultiplicationOperation : function(component, event, helper) {
        
        var num1 = component.get('v.input1');
        var num2 = component.get('v.input2');
        
     
        component.set('v.output', parseInt(num1)*parseInt(num2));
        
		
	},
    
     SubtractionOperation : function(component, event, helper) {
        
        var num1 = component.get('v.input1');
        var num2 = component.get('v.input2');
        
     
		component.set('v.output', parseInt(num1)-parseInt(num2));
	},

    DivisionOperation : function(component, event, helper) {
        
        var num1 = component.get('v.input1');
        var num2 = component.get('v.input2');
        
        
		component.set('v.output', parseInt(num1)/parseInt(num2));
	},
})