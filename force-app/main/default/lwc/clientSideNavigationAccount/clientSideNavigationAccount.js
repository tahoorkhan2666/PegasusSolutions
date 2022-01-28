import { LightningElement,api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

 export default class ClientSideNavigationAccount extends NavigationMixin(LightningElement) {

    @api recordId;

    handlechange(){
        this[NavigationMixin.Navigate]({type :'standard__objectPage' , 
        attributes :{objectApiName : 'Account', actionName :'detail'}});

    }
}