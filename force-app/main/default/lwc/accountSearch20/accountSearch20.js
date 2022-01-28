import { LightningElement,wire } from 'lwc';
import queryByAccount from '@salesforce/apex/AccountListLWC.queryByAccount'

export default class AccountSearch20 extends LightningElement {

    noOfEmployees = null;
    handleChange (event){
        this.noOfEmployees = event.detail.value;
    }

    reset(){
        this.noOfEmployees = null;
    }

    @wire(queryByAccount,{ noOfEmployees : '$noOfEmployees'}) accounts;

}