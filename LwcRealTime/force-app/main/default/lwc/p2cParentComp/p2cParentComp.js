import { LightningElement,track } from 'lwc';

export default class P2cParentComp extends LightningElement {
  parentonclick;
  typedMsg;
    parentCompDetails = [
     {
     Name : "Pc",
     Id :251354
 },
 {
    Name : "KP",
    Id :2513544
}
]

testEvent(event) {
    this.typedMsg = event.target.value();
    console.log(this.typedMsg)
}
handleClick() {
    this.parentonclick = typedMsg;
    alert("Button Clicked")
}
}