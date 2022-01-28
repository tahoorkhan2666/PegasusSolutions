import { LightningElement } from 'lwc';

export default class AccountSearch extends LightningElement {

    NumberOfEmp = null;
    handlechange (event){
        this.NumberOfEmp = event.detail.value;

    }

    reset(){
        this.NumberOfEmp = null;   
    }

}