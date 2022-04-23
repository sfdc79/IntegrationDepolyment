public class XML_Example_1 {
    public string result{set;get;}
    public XML_Example_1() {
        Dom.Document doc = new Dom.Document();
        Dom.XMLNode root = doc.createRootElement('College', null,null);
        root.setAttribute('CODE','CB012');
        root.setAttribute('UNIVERSITY','OU');
        Dom.XMLNode name = root.addChildElement('Name', null,null);
        Name.addTextNode('CBIT');
        Dom.XMLNode phone = root.addChildElement('Phone', null,null);
        Phone.addTextNode('042-2562');
         Dom.XMLNode Address = root.addChildElement('Address', null,null);
        Dom.XMLNode City = Address.addChildElement('City', null,null);
        City.addTextNode('hyd');
        Dom.XMLNode State = Address.addChildElement('State', null,null);
        State.addTextNode('TG');
        result = doc.toXmlString();
        
    }

}