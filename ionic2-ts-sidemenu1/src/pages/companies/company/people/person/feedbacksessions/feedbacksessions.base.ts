import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class FeedbackSessionsBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getFeedbackSessions();
        
    }
    
    public FeedbackSessionsState = siteMap['FeedbackSessions'];

    public pages : any;

    

    public FeedbackSessionState = siteMap['FeedbackSession'];
    public parent : any;
    public feedbackSessions: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getFeedbackSessions() {
        return new Promise(resolve => {
            
            this.parent.reload()
                .then(result => {
                    this.feedbackSessions = result.FeedbackSessions;
                    resolve(result);
                })
            
        });
    }

    reload() { return this.getFeedbackSessions(); }

    addNewFeedbackSession() { // 
        var newFeedbackSession = {
        
            PersonInterviewed
             : this.parent.person.PersonId,
            "Name" : "New FeedbackSession " + (this.feedbackSessions ? this.feedbackSessions.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewFeedbackSession(newFeedbackSession)
            .then(data => {
                
                this.parent.reload();
                this.getFeedbackSessions();
                this.goToState(this.FeedbackSessionState, data, true);
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

