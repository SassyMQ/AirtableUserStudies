import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../app/app.modules-base';
import { IonicBase } from '../../app/ionic-base';
import { RestAPIService } from '../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class CompaniesBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getCompanies();
        
    }
    
    public CompaniesState = siteMap['Companies'];

    public pages : any;

    

    public CompanyState = siteMap['Company'];
    public parent : any;
    public companies: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getCompanies() {
        return new Promise(resolve => {
            
            this.apiSvc.getCompanies()
                .then(result => { 
                    this.companies = result;
                    resolve(result);
                });
        });
    }

    reload() { return this.getCompanies(); }

    addNewCompany() { // 
        var newCompany = {
            "Name" : "New Company " + (this.companies ? this.companies.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewCompany(newCompany)
            .then(data => {
                
                this.getCompanies();
                this.goToState(this.CompanyState, data, true);
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

