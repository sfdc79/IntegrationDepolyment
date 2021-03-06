import { LightningElement } from 'lwc';
export default class QuizApp extends LightningElement {

selected={} // for storing answers

correctAnswers = 0 //to show the number of correct answers

isSubmitted = false // use to show the result

myQuestions=[

{

id:"Question1",

question:" Salesforce Scratch Org is?",

answers:{

a:"Developer Org",

b:"Sandbox Org",

c:"Test org"

},

correctAnswer:"b"

},

{

id:"Question2",

question:"How you write Expression in LWC HTML??",

answers:{

a:"if:true={propertyName}",

b:"if:true={!propertyName}",

c:"if:true='{propertyName}'"

},

correctAnswer:"a"

},

{

id:"Question3",

question:"WHich one of the following is not a directive?",

answers:{

a:"for:each",

b:"if:true",

c:"@track"

},

correctAnswer:"c"

}

]

//used for disabling the sumbmit button

get allNotSelected(){

return !(Object.keys(this.selected).length === this.myQuestions.length)

}

// for applying dynamic styling to our result

get isScoredFull(){

return `slds-text-heading_large ${this.myQuestions.length === this.correctAnswers?

'slds-text-color_success':'slds-text-color_error'}`

}

// changeHandler get's called on every click on the options

changeHandler(event){

const {name, value} = event.target

this.selected={...this.selected, [name]:value}

}

//form submit handler

submitHandler(event){

event.preventDefault()

let correct = this.myQuestions.filter(item=>this.selected[item.id] === item.correctAnswer)

this.correctAnswers = correct.length

this.isSubmitted = true

}

//form reset handler

resetHandler(){

this.selected ={}

this.correctAnswers=0

this.isSubmitted = false

}

}