({
	doHandleEvent : function(component, event, helper) {
		var getmessage = event.getParam('message');
        component.set("v.SecondComponentMessage", getmessage);
	}
})