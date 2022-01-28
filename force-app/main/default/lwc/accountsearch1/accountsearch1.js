import { LightningElement } from 'lwc';

export default class Accountsearch1 extends LightningElement {
    numofemp = null;
    handleonchange (event){
        this.numofemp = event.detail.value;
    }

    reset(){
      this.numofemp = null;
    }

}