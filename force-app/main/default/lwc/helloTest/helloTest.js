import { LightningElement } from 'lwc';

export default class HelloTest extends LightningElement {

    greeting = 'Hello World';
    handlechange(event){
        this.greeting=event.target.value;
    }
}