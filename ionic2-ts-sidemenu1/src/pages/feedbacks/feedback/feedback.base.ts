import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../app/app.modules-base';
import { IonicBase } from '../../../app/ionic-base';
import { RestAPIService } from '../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class FeedbackBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.feedback = this.navParams.get('feedback') || this.feedback;
        this.getFeedback();
        this.editMode = this.navParams.get("editMode");
    }
    
    public FeedbackState = siteMap['Feedback'];

    public pages : any;

    public parent : any;

    
    public feedback: any = {};
    ;
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getFeedback() {
        return new Promise(resolve => {
            let feedback = this.navParams.get("feedback");
            if (!feedback) feedback = this.navParams.get("feedback");

            
            this.apiSvc.getFeedback(feedback)
                .then(data => {
                    this.feedback = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getFeedback(); }

    updateFeedback(theFeedbackToUpdate) {
            

        this.apiSvc.updateFeedback(theFeedbackToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getFeedback();
                        this.editMode = false;
                    });
            });
            
    }


    deleteFeedback() {
        

        this.apiSvc.deleteFeedback(this.feedback)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
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

