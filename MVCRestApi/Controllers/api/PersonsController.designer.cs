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
    public partial class PersonsController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Person> Persons);
        partial void OnAfterGetById(Person Persons, String personId);
        partial void OnBeforePost(Person person);
        partial void OnAfterPost(Person person);
        partial void OnBeforePut(Person person);
        partial void OnAfterPut(Person person);
        partial void OnBeforeDelete(Person person);
        partial void OnAfterDelete(Person person);
        

        public PersonsController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Person - Gets a list of Persons
        /// </summary>
        /// <returns>List of Persons</returns>
        public IEnumerable<Person> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllPersons<Person>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.Person.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Person based on it's ID
        /// </summary>
        /// <returns>Person</returns>
        public Person Get(String personId)
        {
            var PersonsWhere = String.Format("PersonId = '{0}'", personId);
            var result = this.SDM.GetAllPersons<Person>(PersonsWhere).FirstOrDefault();
            dc.Person.CheckExpand(this.SDM, new Person[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, personId);
            return result;
        }

        /// <summary>
        /// Inserts a new Person
        /// </summary>
        /// <returns>The inserted Person, including the ID assigned</returns>
        public Person Post([FromBody]Person person)
        {// text
            
            if (String.IsNullOrEmpty(person.PersonId)) person.PersonId = Guid.NewGuid().ToString();
            this.OnBeforePost(person);
            this.SDM.Upsert(person);
            this.OnAfterPost(person);
            return person;
        }

        /// <summary>
        /// Updates a specific Person based on it's ID
        /// </summary>
        /// <returns>Person</returns>
        public Person Put([FromBody]Person person)
        {
            
            if (String.IsNullOrEmpty(person.PersonId)) person.PersonId = Guid.NewGuid().ToString();
            this.OnBeforePut(person);
            this.SDM.Upsert(person);
            this.OnAfterPut(person);
            return person;
        }

        /// <summary>
        /// Deletes a specific Person based on it's ID
        /// </summary>
        /// <returns>Person</returns>
        public void Delete(Guid PersonId)
        {
            var personWhere = String.Format("PersonId = '{0}'", PersonId);
            var person = this.SDM.GetAllPersons<Person>(personWhere).FirstOrDefault();
            this.OnBeforeDelete(person);
            this.SDM.Delete(person);
            this.OnAfterDelete(person);
        }
    }
}
