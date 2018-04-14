//
// ===== File globals.ts    
//

    
        import { Home } from '../pages/home/home';
    

    
        import { Feedbacks } from '../pages/feedbacks/feedbacks';
    

    
        import { Feedback } from '../pages/feedbacks/feedback/feedback';
    

    
        import { Companies } from '../pages/companies/companies';
    

    
        import { Company } from '../pages/companies/company/company';
    

    
        import { People } from '../pages/companies/company/people/people';
    

    
        import { Person } from '../pages/companies/company/people/person/person';
    

    
        import { FeedbackSessions } from '../pages/companies/company/people/person/feedbacksessions/feedbacksessions';
    

    
        import { FeedbackSession } from '../pages/companies/company/people/person/feedbacksessions/feedbacksession/feedbacksession';
    

    
        import { About } from '../pages/about/about';
    

    
        import { Contact } from '../pages/contact/contact';
    

    
        import { Chat } from '../pages/contact/chat/chat';
    

    
        import { Email } from '../pages/contact/email/email';
    

    
        import { Call } from '../pages/contact/call/call';
    


export const components : any[] = [Home, Feedbacks, Feedback, Companies, Company, People, Person, FeedbackSessions, FeedbackSession, About, Contact, Chat, Email, Call];

export const siteMap: { [name: string]: { name: string, title: string, component: any, parentComponent: any, subComponents: any[]; } } = {};

                            siteMap['Home'] = { name: 'Home', title: 'Home', component: Home, parentComponent: null, subComponents: [] };
                        
                            siteMap['Feedbacks'] = { name: 'Feedbacks', title: 'Feedbacks', component: Feedbacks, parentComponent: null, subComponents: [] };
                        
                            siteMap['Feedback'] = { name: 'Feedback', title: 'Feedback', component: Feedback, parentComponent: null, subComponents: [] };
                        
                            siteMap['Companies'] = { name: 'Companies', title: 'Companies', component: Companies, parentComponent: null, subComponents: [] };
                        
                            siteMap['Company'] = { name: 'Company', title: 'Company', component: Company, parentComponent: null, subComponents: [] };
                        
                            siteMap['People'] = { name: 'People', title: 'People', component: People, parentComponent: null, subComponents: [] };
                        
                            siteMap['Person'] = { name: 'Person', title: 'Person', component: Person, parentComponent: null, subComponents: [] };
                        
                            siteMap['FeedbackSessions'] = { name: 'FeedbackSessions', title: 'FeedbackSessions', component: FeedbackSessions, parentComponent: null, subComponents: [] };
                        
                            siteMap['FeedbackSession'] = { name: 'FeedbackSession', title: 'FeedbackSession', component: FeedbackSession, parentComponent: null, subComponents: [] };
                        
                            siteMap['About'] = { name: 'About', title: 'About', component: About, parentComponent: null, subComponents: [] };
                        
                            siteMap['Contact'] = { name: 'Contact', title: 'Contact', component: Contact, parentComponent: null, subComponents: [] };
                        
                            siteMap['Chat'] = { name: 'Chat', title: 'Chat', component: Chat, parentComponent: null, subComponents: [] };
                        
                            siteMap['Email'] = { name: 'Email', title: 'Email', component: Email, parentComponent: null, subComponents: [] };
                        
                            siteMap['Call'] = { name: 'Call', title: 'Call', component: Call, parentComponent: null, subComponents: [] };
                        


                                siteMap['Feedbacks'].subComponents.push(siteMap['Feedback']);
                            
                                siteMap['Feedback'].parentComponent = siteMap['Feedbacks'];
                            
                                siteMap['Companies'].subComponents.push(siteMap['Company']);
                            
                                siteMap['Company'].parentComponent = siteMap['Companies'];
                            
                                siteMap['Company'].subComponents.push(siteMap['People']);
                            
                                siteMap['People'].parentComponent = siteMap['Company'];
                            
                                siteMap['People'].subComponents.push(siteMap['Person']);
                            
                                siteMap['Person'].parentComponent = siteMap['People'];
                            
                                siteMap['Person'].subComponents.push(siteMap['FeedbackSessions']);
                            
                                siteMap['FeedbackSessions'].parentComponent = siteMap['Person'];
                            
                                siteMap['FeedbackSessions'].subComponents.push(siteMap['FeedbackSession']);
                            
                                siteMap['FeedbackSession'].parentComponent = siteMap['FeedbackSessions'];
                            
                                siteMap['Contact'].subComponents.push(siteMap['Chat']);
                            
                                siteMap['Contact'].subComponents.push(siteMap['Email']);
                            
                                siteMap['Contact'].subComponents.push(siteMap['Call']);
                            
                                siteMap['Chat'].parentComponent = siteMap['Contact'];
                            
                                siteMap['Email'].parentComponent = siteMap['Contact'];
                            
                                siteMap['Call'].parentComponent = siteMap['Contact'];
                            

export const pages : any[] = [

        siteMap['Home']
    , 
        siteMap['Feedbacks']
    , 
        siteMap['Companies']
    , 
        siteMap['About']
    , 
        siteMap['Contact']
    
];

