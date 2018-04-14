using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableUserStudies.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableUserStudies.Lib.DataClasses
{                            
    public partial class Person
    {
        private void InitPoco()
        {
            
            
                this.PersonInterviewed_FeedbackSessions = new BindingList<FeedbackSession>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "PersonId")]
        public String PersonId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "JobRoles")]
        public String JobRoles { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Company")]
        public String Company { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "LinkedInProfile")]
        public String LinkedInProfile { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "FirstName")]
        public String FirstName { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "LastName")]
        public String LastName { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Phone")]
        public String Phone { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "PersonInterviewed_FeedbackSessions")]
        public BindingList<FeedbackSession> PersonInterviewed_FeedbackSessions { get; set; }
            
        /// <summary>
        /// Check to see if there are any related FeedbackSessions, and load them if requested
        /// </summary>
        public static void CheckExpandFeedbackSessions(SqlDataManager sdm, IEnumerable<Person> persons, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("feedbackSessions", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var personsWhere = CreatePersonWhere(persons, "PersonInterviewed");
                var childFeedbackSessions = sdm.GetAllFeedbackSessions<FeedbackSession>(personsWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                persons.ToList()
                        .ForEach(fePerson => fePerson.LoadPersonInterviewed_FeedbackSessions(childFeedbackSessions));
            }

        }


        

        
        /// <summary>
        /// Find the related FeedbackSessions (from the list provided) and attach them locally to the FeedbackSessions list.
        /// </summary>
        public void LoadPersonInterviewed_FeedbackSessions(IEnumerable<FeedbackSession> feedbackSessions)
        {
            feedbackSessions.Where(whereFeedbackSession => whereFeedbackSession.PersonInterviewed == this.PersonId)
                    .ToList()
                    .ForEach(feFeedbackSession => this.PersonInterviewed_FeedbackSessions.Add(feFeedbackSession));
        }
        

        
        
        private static string CreatePersonWhere(IEnumerable<Person> persons, String forignKeyFieldName = "PersonId")
        {
            if (!persons.Any()) return "1=1";
            else 
            {
                var idList = persons.Select(selectPerson => String.Format("'{0}'", selectPerson.PersonId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Person> persons, string expandString)
        {
            
            
            
            CheckExpandFeedbackSessions(sdm, persons, expandString);
        }
        
    }
}
