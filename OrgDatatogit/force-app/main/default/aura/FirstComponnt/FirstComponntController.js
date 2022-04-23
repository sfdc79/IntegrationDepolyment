({
	doSomething : function(component, event, helper) {
		//get event name 
        var appEvent = $A.get('e.c:ApplicationEvent');
        //set parameter for the event
        appEvent.setParams({"message" : "This is Set by FirstComponent in Controller on clicking the button"});
        //fire the event
        appEvent.fire();
	}
})