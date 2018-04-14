using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableUserStudies.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableUserStudies.Lib.DataClasses
{                            
    public partial class Company
    {
        private void InitPoco()
        {
            
            
                this.Persons = new BindingList<Person>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "CompanyId")]
        public String CompanyId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "CompanySize")]
        public String CompanySize { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "About")]
        public String About { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Persons")]
        public BindingList<Person> Persons { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Persons, and load them if requested
        /// </summary>
        public static void CheckExpandPersons(SqlDataManager sdm, IEnumerable<Company> companies, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("persons", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var companiesWhere = CreateCompanyWhere(companies, "Company");
                var childPersons = sdm.GetAllPersons<Person>(companiesWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                companies.ToList()
                        .ForEach(feCompany => feCompany.LoadPersons(childPersons));
            }

        }


        

        
        /// <summary>
        /// Find the related Persons (from the list provided) and attach them locally to the Persons list.
        /// </summary>
        public void LoadPersons(IEnumerable<Person> persons)
        {
            persons.Where(wherePerson => wherePerson.Company == this.CompanyId)
                    .ToList()
                    .ForEach(fePerson => this.Persons.Add(fePerson));
        }
        

        
        
        private static string CreateCompanyWhere(IEnumerable<Company> companies, String forignKeyFieldName = "CompanyId")
        {
            if (!companies.Any()) return "1=1";
            else 
            {
                var idList = companies.Select(selectCompany => String.Format("'{0}'", selectCompany.CompanyId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Company> companies, string expandString)
        {
            
            
            
            CheckExpandPersons(sdm, companies, expandString);
        }
        
    }
}
