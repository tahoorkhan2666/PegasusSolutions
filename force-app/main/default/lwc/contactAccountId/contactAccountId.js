import { LightningElement,wire,track,api } from 'lwc';
import queryrelatedrecord from '@salesforce/apex/AccountListController.queryrelatedrecord'

export default class ContactAccountId extends LightningElement {
  
    @api recordId;

    @track columns = [{type:'text',label:'Account Id',fieldName:'AccountId',sortable : true},
    {type:'text',label:'First Name',fieldName:'FirstName', sortable: true},
    {type:'text',label:'Last Name',fieldName:'LastName', sortable: true},
    {type:'email',label:'Email',fieldName:'Email', sortable: true}];

    @wire(queryrelatedrecord,{acctId : '$recordId'})contacts;

}