import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../app/app.modules-base';
import { IonicBase } from '../../../app/ionic-base';
import { RestAPIService } from '../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class CompanyBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.company = this.navParams.get('company') || this.company;
        this.getCompany();
        this.editMode = this.navParams.get("editMode");
    }
    
    public CompanyState = siteMap['Company'];

    public pages : any;

    

    public PeopleState = siteMap['People'];
    public parent : any;

    
    public company: any = {};
    ;
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getCompany() {
        return new Promise(resolve => {
            let company = this.navParams.get("company");
            if (!company) company = this.navParams.get("company");

            
            this.apiSvc.getCompany(company)
                .then(data => {
                    this.company = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    
                    
                    if (this.company.Persons && this.company.Persons.length > 0) {
                        this.canDelete = false;
                    }
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getCompany(); }

    updateCompany(theCompanyToUpdate) {
            

        this.apiSvc.updateCompany(theCompanyToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getCompany();
                        this.editMode = false;
                    });
            });
            
    }


    deleteCompany() {
        

        this.apiSvc.deleteCompany(this.company)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
            });
            
    }

    
    goToRootState(state, company = {}, editMode = false) : Promise<any> {
        return this.goToState(state, company, editMode, true);
    }

    goToState(state, company = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { company : company, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { company : company, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

