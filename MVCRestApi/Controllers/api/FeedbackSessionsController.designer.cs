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
    public partial class FeedbackSessionsController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<FeedbackSession> FeedbackSessions);
        partial void OnAfterGetById(FeedbackSession FeedbackSessions, String feedbackSessionId);
        partial void OnBeforePost(FeedbackSession feedbacksession);
        partial void OnAfterPost(FeedbackSession feedbacksession);
        partial void OnBeforePut(FeedbackSession feedbacksession);
        partial void OnAfterPut(FeedbackSession feedbacksession);
        partial void OnBeforeDelete(FeedbackSession feedbacksession);
        partial void OnAfterDelete(FeedbackSession feedbacksession);
        

        public FeedbackSessionsController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/FeedbackSession - Gets a list of FeedbackSessions
        /// </summary>
        /// <returns>List of FeedbackSessions</returns>
        public IEnumerable<FeedbackSession> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllFeedbackSessions<FeedbackSession>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.FeedbackSession.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific FeedbackSession based on it's ID
        /// </summary>
        /// <returns>FeedbackSession</returns>
        public FeedbackSession Get(String feedbackSessionId)
        {
            var FeedbackSessionsWhere = String.Format("FeedbackSessionId = '{0}'", feedbackSessionId);
            var result = this.SDM.GetAllFeedbackSessions<FeedbackSession>(FeedbackSessionsWhere).FirstOrDefault();
            dc.FeedbackSession.CheckExpand(this.SDM, new FeedbackSession[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, feedbackSessionId);
            return result;
        }

        /// <summary>
        /// Inserts a new FeedbackSession
        /// </summary>
        /// <returns>The inserted FeedbackSession, including the ID assigned</returns>
        public FeedbackSession Post([FromBody]FeedbackSession feedbacksession)
        {// text
            
            if (String.IsNullOrEmpty(feedbacksession.FeedbackSessionId)) feedbacksession.FeedbackSessionId = Guid.NewGuid().ToString();
            this.OnBeforePost(feedbacksession);
            this.SDM.Upsert(feedbacksession);
            this.OnAfterPost(feedbacksession);
            return feedbacksession;
        }

        /// <summary>
        /// Updates a specific FeedbackSession based on it's ID
        /// </summary>
        /// <returns>FeedbackSession</returns>
        public FeedbackSession Put([FromBody]FeedbackSession feedbacksession)
        {
            
            if (String.IsNullOrEmpty(feedbacksession.FeedbackSessionId)) feedbacksession.FeedbackSessionId = Guid.NewGuid().ToString();
            this.OnBeforePut(feedbacksession);
            this.SDM.Upsert(feedbacksession);
            this.OnAfterPut(feedbacksession);
            return feedbacksession;
        }

        /// <summary>
        /// Deletes a specific FeedbackSession based on it's ID
        /// </summary>
        /// <returns>FeedbackSession</returns>
        public void Delete(Guid FeedbackSessionId)
        {
            var feedbacksessionWhere = String.Format("FeedbackSessionId = '{0}'", FeedbackSessionId);
            var feedbacksession = this.SDM.GetAllFeedbackSessions<FeedbackSession>(feedbacksessionWhere).FirstOrDefault();
            this.OnBeforeDelete(feedbacksession);
            this.SDM.Delete(feedbacksession);
            this.OnAfterDelete(feedbacksession);
        }
    }
}
