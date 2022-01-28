import { LightningElement,wire } from 'lwc';
import query1 from '@salesforce/apex/AccountListLWC1.query1'

export default class AccountSearch2020 extends LightningElement {

    noofemp = null;
    handlechange(event){
        this.noofemp= event.detail.value;
    }

    reset(){
        this.noofemp= null;
    }

    @wire(query1,{noofemp : '$noofemp'})accounts;
}