import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class FeedbackSessionBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.feedbackSession = this.navParams.get('feedbacksession') || this.feedbackSession;
        this.getFeedbackSession();
        this.editMode = this.navParams.get("editMode");
    }
    
    public FeedbackSessionState = siteMap['FeedbackSession'];

    public pages : any;

    public parent : any;

    
    public feedbacksession: any = {};
    
    public feedbackSession: any = {};
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getFeedbackSession() {
        return new Promise(resolve => {
            let feedbacksession = this.navParams.get("feedbacksession");
            if (!feedbacksession) feedbacksession = this.navParams.get("feedbackSession");

            
            this.apiSvc.getFeedbackSession(feedbacksession)
                .then(data => {
                    this.feedbacksession = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getFeedbackSession(); }

    updateFeedbackSession(theFeedbackSessionToUpdate) {
            

        this.apiSvc.updateFeedbackSession(theFeedbackSessionToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getFeedbackSession();
                        this.editMode = false;
                    });
            });
            
    }


    deleteFeedbackSession() {
        

        this.apiSvc.deleteFeedbackSession(this.feedbacksession)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
            });
            
    }

    
    goToRootState(state, feedbackSession = {}, editMode = false) : Promise<any> {
        return this.goToState(state, feedbackSession, editMode, true);
    }

    goToState(state, feedbackSession = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { feedbacksession : feedbackSession, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { feedbacksession : feedbackSession, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

