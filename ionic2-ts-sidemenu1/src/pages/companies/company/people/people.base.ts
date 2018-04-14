import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../app/app.modules-base';
import { IonicBase } from '../../../../app/ionic-base';
import { RestAPIService } from '../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class PeopleBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getPeople();
        
    }
    
    public PeopleState = siteMap['People'];

    public pages : any;

    

    public PersonState = siteMap['Person'];
    public parent : any;
    public persons: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getPeople() {
        return new Promise(resolve => {
            
            this.parent.reload()
                .then(result => {
                    this.persons = result.Persons;
                    resolve(result);
                })
            
        });
    }

    reload() { return this.getPeople(); }

    addNewPerson() { // 
        var newPerson = {
        
            Company
             : this.parent.company.CompanyId,
            "Name" : "New Person " + (this.persons ? this.persons.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewPerson(newPerson)
            .then(data => {
                
                this.parent.reload();
                this.getPeople();
                this.goToState(this.PersonState, data, true);
            });
            
    }
    

    

    
    goToRootState(state, person = {}, editMode = false) : Promise<any> {
        return this.goToState(state, person, editMode, true);
    }

    goToState(state, person = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { person : person, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { person : person, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

