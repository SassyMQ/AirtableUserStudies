import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class PersonBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.person = this.navParams.get('person') || this.person;
        this.getPerson();
        this.editMode = this.navParams.get("editMode");
    }
    
    public PersonState = siteMap['Person'];

    public pages : any;

    

    public FeedbackSessionsState = siteMap['FeedbackSessions'];
    public parent : any;

    
    public person: any = {};
    ;
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getPerson() {
        return new Promise(resolve => {
            let person = this.navParams.get("person");
            if (!person) person = this.navParams.get("person");

            
            this.apiSvc.getPerson(person)
                .then(data => {
                    this.person = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    
                    
                    if (this.person.FeedbackSessions && this.person.FeedbackSessions.length > 0) {
                        this.canDelete = false;
                    }
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getPerson(); }

    updatePerson(thePersonToUpdate) {
            

        this.apiSvc.updatePerson(thePersonToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getPerson();
                        this.editMode = false;
                    });
            });
            
    }


    deletePerson() {
        

        this.apiSvc.deletePerson(this.person)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
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

