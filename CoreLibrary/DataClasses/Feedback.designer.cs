using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableUserStudies.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableUserStudies.Lib.DataClasses
{                            
    public partial class Feedback
    {
        private void InitPoco()
        {
            
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "FeedbackId")]
        public String FeedbackId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Sessions")]
        public Nullable<Int32> Sessions { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        

        
        
        private static string CreateFeedbackWhere(IEnumerable<Feedback> feedbacks, String forignKeyFieldName = "FeedbackId")
        {
            if (!feedbacks.Any()) return "1=1";
            else 
            {
                var idList = feedbacks.Select(selectFeedback => String.Format("'{0}'", selectFeedback.FeedbackId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Feedback> feedbacks, string expandString)
        {
            
        }
        
    }
}
