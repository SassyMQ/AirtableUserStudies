using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableUserStudies.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableUserStudies.Lib.DataClasses
{                            
    public partial class FeedbackSession
    {
        private void InitPoco()
        {
            
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "FeedbackSessionId")]
        public String FeedbackSessionId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Notes")]
        public String Notes { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "PersonInterviewed")]
        public String PersonInterviewed { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Date")]
        public Nullable<DateTime> Date { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "mm")]
        public Nullable<Int32> mm { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "SessionType")]
        public String SessionType { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "OverallFeedbackScore")]
        public Nullable<Int32> OverallFeedbackScore { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        

        
        
        private static string CreateFeedbackSessionWhere(IEnumerable<FeedbackSession> feedbackSessions, String forignKeyFieldName = "FeedbackSessionId")
        {
            if (!feedbackSessions.Any()) return "1=1";
            else 
            {
                var idList = feedbackSessions.Select(selectFeedbackSession => String.Format("'{0}'", selectFeedbackSession.FeedbackSessionId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<FeedbackSession> feedbackSessions, string expandString)
        {
            
        }
        
    }
}
