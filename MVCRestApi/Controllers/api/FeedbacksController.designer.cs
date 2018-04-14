using AirtableUserStudies.Lib.SqlDataManagement;
using AirtableUserStudies.Lib.DataClasses;
using dc=AirtableUserStudies.Lib.DataClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web;

namespace WebApplication1.Areas.RESTApi.Controllers
{
    public partial class FeedbacksController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Feedback> Feedbacks);
        partial void OnAfterGetById(Feedback Feedbacks, String feedbackId);
        partial void OnBeforePost(Feedback feedback);
        partial void OnAfterPost(Feedback feedback);
        partial void OnBeforePut(Feedback feedback);
        partial void OnAfterPut(Feedback feedback);
        partial void OnBeforeDelete(Feedback feedback);
        partial void OnAfterDelete(Feedback feedback);
        

        public FeedbacksController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Feedback - Gets a list of Feedbacks
        /// </summary>
        /// <returns>List of Feedbacks</returns>
        public IEnumerable<Feedback> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllFeedbacks<Feedback>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.Feedback.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Feedback based on it's ID
        /// </summary>
        /// <returns>Feedback</returns>
        public Feedback Get(String feedbackId)
        {
            var FeedbacksWhere = String.Format("FeedbackId = '{0}'", feedbackId);
            var result = this.SDM.GetAllFeedbacks<Feedback>(FeedbacksWhere).FirstOrDefault();
            dc.Feedback.CheckExpand(this.SDM, new Feedback[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, feedbackId);
            return result;
        }

        /// <summary>
        /// Inserts a new Feedback
        /// </summary>
        /// <returns>The inserted Feedback, including the ID assigned</returns>
        public Feedback Post([FromBody]Feedback feedback)
        {// text
            
            if (String.IsNullOrEmpty(feedback.FeedbackId)) feedback.FeedbackId = Guid.NewGuid().ToString();
            this.OnBeforePost(feedback);
            this.SDM.Upsert(feedback);
            this.OnAfterPost(feedback);
            return feedback;
        }

        /// <summary>
        /// Updates a specific Feedback based on it's ID
        /// </summary>
        /// <returns>Feedback</returns>
        public Feedback Put([FromBody]Feedback feedback)
        {
            
            if (String.IsNullOrEmpty(feedback.FeedbackId)) feedback.FeedbackId = Guid.NewGuid().ToString();
            this.OnBeforePut(feedback);
            this.SDM.Upsert(feedback);
            this.OnAfterPut(feedback);
            return feedback;
        }

        /// <summary>
        /// Deletes a specific Feedback based on it's ID
        /// </summary>
        /// <returns>Feedback</returns>
        public void Delete(Guid FeedbackId)
        {
            var feedbackWhere = String.Format("FeedbackId = '{0}'", FeedbackId);
            var feedback = this.SDM.GetAllFeedbacks<Feedback>(feedbackWhere).FirstOrDefault();
            this.OnBeforeDelete(feedback);
            this.SDM.Delete(feedback);
            this.OnAfterDelete(feedback);
        }
    }
}
