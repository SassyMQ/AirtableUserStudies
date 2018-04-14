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
    public partial class CompaniesController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Company> Companies);
        partial void OnAfterGetById(Company Companies, String companyId);
        partial void OnBeforePost(Company company);
        partial void OnAfterPost(Company company);
        partial void OnBeforePut(Company company);
        partial void OnAfterPut(Company company);
        partial void OnBeforeDelete(Company company);
        partial void OnAfterDelete(Company company);
        

        public CompaniesController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Company - Gets a list of Companies
        /// </summary>
        /// <returns>List of Companies</returns>
        public IEnumerable<Company> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllCompanies<Company>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.Company.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Company based on it's ID
        /// </summary>
        /// <returns>Company</returns>
        public Company Get(String companyId)
        {
            var CompaniesWhere = String.Format("CompanyId = '{0}'", companyId);
            var result = this.SDM.GetAllCompanies<Company>(CompaniesWhere).FirstOrDefault();
            dc.Company.CheckExpand(this.SDM, new Company[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, companyId);
            return result;
        }

        /// <summary>
        /// Inserts a new Company
        /// </summary>
        /// <returns>The inserted Company, including the ID assigned</returns>
        public Company Post([FromBody]Company company)
        {// text
            
            if (String.IsNullOrEmpty(company.CompanyId)) company.CompanyId = Guid.NewGuid().ToString();
            this.OnBeforePost(company);
            this.SDM.Upsert(company);
            this.OnAfterPost(company);
            return company;
        }

        /// <summary>
        /// Updates a specific Company based on it's ID
        /// </summary>
        /// <returns>Company</returns>
        public Company Put([FromBody]Company company)
        {
            
            if (String.IsNullOrEmpty(company.CompanyId)) company.CompanyId = Guid.NewGuid().ToString();
            this.OnBeforePut(company);
            this.SDM.Upsert(company);
            this.OnAfterPut(company);
            return company;
        }

        /// <summary>
        /// Deletes a specific Company based on it's ID
        /// </summary>
        /// <returns>Company</returns>
        public void Delete(Guid CompanyId)
        {
            var companyWhere = String.Format("CompanyId = '{0}'", CompanyId);
            var company = this.SDM.GetAllCompanies<Company>(companyWhere).FirstOrDefault();
            this.OnBeforeDelete(company);
            this.SDM.Delete(company);
            this.OnAfterDelete(company);
        }
    }
}
