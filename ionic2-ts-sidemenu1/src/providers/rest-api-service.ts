import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

/*
  Generated class for the RestAPISErvice provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class RestAPIService {

    apiUrl = 'http://localhost:64110/api';


    constructor(public http: Http) {
      console.log('Hello RestAPIService Provider');
    }

    
      
      
      
      
      
    public persons: any[];
    getPersons() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Persons?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.persons = data;
                    resolve(this.persons);
                });
        });
    }

    public person: any[];
    getPerson(person: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Persons?expand=all&personId=' + person.PersonId)
                .map(res => res.json())
                .subscribe(data => {
                    this.person = data;
                    resolve(this.person);
                });
        });
    }

    
    updatePerson(person: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Persons', person)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewPerson(person: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Persons', person)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deletePerson(person: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Persons?personId=' + person.PersonId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public feedbacks: any[];
    getFeedbacks() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Feedbacks?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.feedbacks = data;
                    resolve(this.feedbacks);
                });
        });
    }

    public feedback: any[];
    getFeedback(feedback: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Feedbacks?expand=all&feedbackId=' + feedback.FeedbackId)
                .map(res => res.json())
                .subscribe(data => {
                    this.feedback = data;
                    resolve(this.feedback);
                });
        });
    }

    
    updateFeedback(feedback: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Feedbacks', feedback)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewFeedback(feedback: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Feedbacks', feedback)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteFeedback(feedback: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Feedbacks?feedbackId=' + feedback.FeedbackId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public companies: any[];
    getCompanies() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Companies?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.companies = data;
                    resolve(this.companies);
                });
        });
    }

    public company: any[];
    getCompany(company: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Companies?expand=all&companyId=' + company.CompanyId)
                .map(res => res.json())
                .subscribe(data => {
                    this.company = data;
                    resolve(this.company);
                });
        });
    }

    
    updateCompany(company: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Companies', company)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewCompany(company: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Companies', company)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteCompany(company: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Companies?companyId=' + company.CompanyId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public feedbackSessions: any[];
    getFeedbackSessions() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/FeedbackSessions?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.feedbackSessions = data;
                    resolve(this.feedbackSessions);
                });
        });
    }

    public feedbackSession: any[];
    getFeedbackSession(feedbackSession: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/FeedbackSessions?expand=all&feedbackSessionId=' + feedbackSession.FeedbackSessionId)
                .map(res => res.json())
                .subscribe(data => {
                    this.feedbackSession = data;
                    resolve(this.feedbackSession);
                });
        });
    }

    
    updateFeedbackSession(feedbackSession: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/FeedbackSessions', feedbackSession)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewFeedbackSession(feedbackSession: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/FeedbackSessions', feedbackSession)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteFeedbackSession(feedbackSession: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/FeedbackSessions?feedbackSessionId=' + feedbackSession.FeedbackSessionId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    


}

