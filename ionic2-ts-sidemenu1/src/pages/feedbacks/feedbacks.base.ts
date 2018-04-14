import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../app/app.modules-base';
import { IonicBase } from '../../app/ionic-base';
import { RestAPIService } from '../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class FeedbacksBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getFeedbacks();
        
    }
    
    public FeedbacksState = siteMap['Feedbacks'];

    public pages : any;

    

    public FeedbackState = siteMap['Feedback'];
    public parent : any;
    public feedbacks: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getFeedbacks() {
        return new Promise(resolve => {
            
            this.apiSvc.getFeedbacks()
                .then(result => { 
                    this.feedbacks = result;
                    resolve(result);
                });
        });
    }

    reload() { return this.getFeedbacks(); }

    addNewFeedback() { // 
        var newFeedback = {
            "Name" : "New Feedback " + (this.feedbacks ? this.feedbacks.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewFeedback(newFeedback)
            .then(data => {
                
                this.getFeedbacks();
                this.goToState(this.FeedbackState, data, true);
            });
            
    }
    

    

    
    goToRootState(state, feedback = {}, editMode = false) : Promise<any> {
        return this.goToState(state, feedback, editMode, true);
    }

    goToState(state, feedback = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { feedback : feedback, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { feedback : feedback, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

