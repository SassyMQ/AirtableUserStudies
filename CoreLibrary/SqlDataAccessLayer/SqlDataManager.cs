/************************************************
 CODEE42 - AUTO GENERATED FILE - DO NOT OVERWRITE
 ************************************************
 Created By: EJ Alexandra - 2016
             An Abstract Level, llc
 License:    Mozilla Public License 2.0
 ************************************************
 CODEE42 - AUTO GENERATED FILE - DO NOT OVERWRITE
 ************************************************/
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Configuration;

using AirtableUserStudies.Lib.DataClasses;

using CoreLibrary.Extensions;

namespace AirtableUserStudies.Lib.SqlDataManagement
{
    public partial class SqlDataManager : IDisposable
    {
        public SqlDataManager() : this(SqlDataManager.LastConnectionString) 
        {
            this.Schema = "dbo";
        }
    
        public SqlDataManager(String connectionString)
        {
            this.Schema = "dbo";
            this.ConnectionString = connectionString;
            if (String.IsNullOrEmpty(this.ConnectionString))
            {
                this.ConnectionString = ConfigurationManager.ConnectionStrings[0].ConnectionString;
            }
        }

        public SqlDataManager(String dataSourceName, String dbName) 
        {
            this.Schema = "dbo";
            this.DataSourceName = dataSourceName;
            this.DBName = dbName;
        }
        
        public void Dispose() 
        {
            this.IsDisposed = true;
        }
        
        public static string LastConnectionString { get; set; }
        public string ConnectionString { get; set; }
        public String DataSourceName { get; set; }
        public String DBName { get; set; }
        public Boolean IsDisposed { get; set; }
        public String Schema { get; set; }
        

  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Person person)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Person] (PersonId, Name, JobRoles, Company, LinkedInProfile, FirstName, LastName, Phone, createdTime)
                                    VALUES (@PersonId, @Name, @JobRoles, @Company, @LinkedInProfile, @FirstName, @LastName, @Phone, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(person.PersonId, null)) cmd.Parameters.AddWithValue("@PersonId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@PersonId", person.PersonId);
                
                  
                if (ReferenceEquals(person.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", person.Name);
                
                  
                if (ReferenceEquals(person.JobRoles, null)) cmd.Parameters.AddWithValue("@JobRoles", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@JobRoles", person.JobRoles);
                
                  
                if (ReferenceEquals(person.Company, null)) cmd.Parameters.AddWithValue("@Company", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Company", person.Company);
                
                  
                if (ReferenceEquals(person.LinkedInProfile, null)) cmd.Parameters.AddWithValue("@LinkedInProfile", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@LinkedInProfile", person.LinkedInProfile);
                
                  
                if (ReferenceEquals(person.FirstName, null)) cmd.Parameters.AddWithValue("@FirstName", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@FirstName", person.FirstName);
                
                  
                if (ReferenceEquals(person.LastName, null)) cmd.Parameters.AddWithValue("@LastName", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@LastName", person.LastName);
                
                  
                if (ReferenceEquals(person.Phone, null)) cmd.Parameters.AddWithValue("@Phone", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Phone", person.Phone);
                
                  
                if (ReferenceEquals(person.createdTime, null) ||
                    (person.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", person.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Person person)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = person.PersonId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Person] WHERE PersonId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(person);
                else return this.Insert(person);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllPersons<T>()
            where T : Person, new()
        {
            return this.GetAllPersons<T>(String.Empty);
        }

        
        public List<T> GetAllPersons<T>(String whereClause)
            where T : Person, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Person]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T person = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("PersonId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          person.PersonId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          person.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("JobRoles");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          person.JobRoles = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Company");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          person.Company = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("LinkedInProfile");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          person.LinkedInProfile = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("FirstName");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          person.FirstName = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("LastName");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          person.LastName = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Phone");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          person.Phone = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          person.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(person);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Person
        /// </summary>
        /// <returns></returns>
        public int Update(Person person)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Person] SET 
                                    [Name] = @Name, [JobRoles] = @JobRoles, [Company] = @Company, [LinkedInProfile] = @LinkedInProfile, [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [createdTime] = @createdTime
                                    WHERE  [PersonId] = @PersonId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(person.PersonId, null)) cmd.Parameters.AddWithValue("@PersonId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@PersonId", person.PersonId);
                 //TEXT
                
                if (ReferenceEquals(person.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", person.Name);
                 //TEXT
                
                if (ReferenceEquals(person.JobRoles, null)) cmd.Parameters.AddWithValue("@JobRoles", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@JobRoles", person.JobRoles);
                 //TEXT
                
                if (ReferenceEquals(person.Company, null)) cmd.Parameters.AddWithValue("@Company", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Company", person.Company);
                 //TEXT
                
                if (ReferenceEquals(person.LinkedInProfile, null)) cmd.Parameters.AddWithValue("@LinkedInProfile", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@LinkedInProfile", person.LinkedInProfile);
                 //TEXT
                
                if (ReferenceEquals(person.FirstName, null)) cmd.Parameters.AddWithValue("@FirstName", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@FirstName", person.FirstName);
                 //TEXT
                
                if (ReferenceEquals(person.LastName, null)) cmd.Parameters.AddWithValue("@LastName", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@LastName", person.LastName);
                 //TEXT
                
                if (ReferenceEquals(person.Phone, null)) cmd.Parameters.AddWithValue("@Phone", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Phone", person.Phone);
                 //DATETIME
                
                if (ReferenceEquals(person.createdTime, null) ||
                    (person.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", person.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Person
        /// </summary>
        /// <returns></returns>
        public int Delete(Person person)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Person] 
                                    WHERE  [PersonId] = @PersonId", this.Schema);
                                    
                
                if (ReferenceEquals(person.PersonId, null)) cmd.Parameters.AddWithValue("@PersonId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@PersonId", person.PersonId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Feedback feedback)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Feedback] (FeedbackId, Name, Sessions, createdTime)
                                    VALUES (@FeedbackId, @Name, @Sessions, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(feedback.FeedbackId, null)) cmd.Parameters.AddWithValue("@FeedbackId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@FeedbackId", feedback.FeedbackId);
                
                  
                if (ReferenceEquals(feedback.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", feedback.Name);
                
                  
                if (ReferenceEquals(feedback.Sessions, null)) cmd.Parameters.AddWithValue("@Sessions", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Sessions", feedback.Sessions);
                
                  
                if (ReferenceEquals(feedback.createdTime, null) ||
                    (feedback.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", feedback.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Feedback feedback)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = feedback.FeedbackId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Feedback] WHERE FeedbackId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(feedback);
                else return this.Insert(feedback);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllFeedbacks<T>()
            where T : Feedback, new()
        {
            return this.GetAllFeedbacks<T>(String.Empty);
        }

        
        public List<T> GetAllFeedbacks<T>(String whereClause)
            where T : Feedback, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Feedback]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T feedback = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("FeedbackId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          feedback.FeedbackId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          feedback.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Sessions");
                      if (!reader.IsDBNull(propertyIndex)) //INT32
                      {
                          
                          feedback.Sessions = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          feedback.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(feedback);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Feedback
        /// </summary>
        /// <returns></returns>
        public int Update(Feedback feedback)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Feedback] SET 
                                    [Name] = @Name, [Sessions] = @Sessions, [createdTime] = @createdTime
                                    WHERE  [FeedbackId] = @FeedbackId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(feedback.FeedbackId, null)) cmd.Parameters.AddWithValue("@FeedbackId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@FeedbackId", feedback.FeedbackId);
                 //TEXT
                
                if (ReferenceEquals(feedback.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", feedback.Name);
                 //INT32
                
                if (ReferenceEquals(feedback.Sessions, null)) cmd.Parameters.AddWithValue("@Sessions", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Sessions", feedback.Sessions);
                 //DATETIME
                
                if (ReferenceEquals(feedback.createdTime, null) ||
                    (feedback.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", feedback.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Feedback
        /// </summary>
        /// <returns></returns>
        public int Delete(Feedback feedback)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Feedback] 
                                    WHERE  [FeedbackId] = @FeedbackId", this.Schema);
                                    
                
                if (ReferenceEquals(feedback.FeedbackId, null)) cmd.Parameters.AddWithValue("@FeedbackId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@FeedbackId", feedback.FeedbackId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Company company)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Company] (CompanyId, Name, CompanySize, About, createdTime)
                                    VALUES (@CompanyId, @Name, @CompanySize, @About, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(company.CompanyId, null)) cmd.Parameters.AddWithValue("@CompanyId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CompanyId", company.CompanyId);
                
                  
                if (ReferenceEquals(company.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", company.Name);
                
                  
                if (ReferenceEquals(company.CompanySize, null)) cmd.Parameters.AddWithValue("@CompanySize", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CompanySize", company.CompanySize);
                
                  
                if (ReferenceEquals(company.About, null)) cmd.Parameters.AddWithValue("@About", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@About", company.About);
                
                  
                if (ReferenceEquals(company.createdTime, null) ||
                    (company.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", company.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Company company)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = company.CompanyId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Company] WHERE CompanyId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(company);
                else return this.Insert(company);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllCompanies<T>()
            where T : Company, new()
        {
            return this.GetAllCompanies<T>(String.Empty);
        }

        
        public List<T> GetAllCompanies<T>(String whereClause)
            where T : Company, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Company]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T company = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("CompanyId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          company.CompanyId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          company.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("CompanySize");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          company.CompanySize = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("About");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          company.About = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          company.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(company);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Company
        /// </summary>
        /// <returns></returns>
        public int Update(Company company)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Company] SET 
                                    [Name] = @Name, [CompanySize] = @CompanySize, [About] = @About, [createdTime] = @createdTime
                                    WHERE  [CompanyId] = @CompanyId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(company.CompanyId, null)) cmd.Parameters.AddWithValue("@CompanyId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CompanyId", company.CompanyId);
                 //TEXT
                
                if (ReferenceEquals(company.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", company.Name);
                 //TEXT
                
                if (ReferenceEquals(company.CompanySize, null)) cmd.Parameters.AddWithValue("@CompanySize", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CompanySize", company.CompanySize);
                 //TEXT
                
                if (ReferenceEquals(company.About, null)) cmd.Parameters.AddWithValue("@About", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@About", company.About);
                 //DATETIME
                
                if (ReferenceEquals(company.createdTime, null) ||
                    (company.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", company.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Company
        /// </summary>
        /// <returns></returns>
        public int Delete(Company company)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Company] 
                                    WHERE  [CompanyId] = @CompanyId", this.Schema);
                                    
                
                if (ReferenceEquals(company.CompanyId, null)) cmd.Parameters.AddWithValue("@CompanyId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@CompanyId", company.CompanyId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(FeedbackSession feedbackSession)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[FeedbackSession] (FeedbackSessionId, Notes, PersonInterviewed, Date, mm, SessionType, OverallFeedbackScore, Name, createdTime)
                                    VALUES (@FeedbackSessionId, @Notes, @PersonInterviewed, @Date, @mm, @SessionType, @OverallFeedbackScore, @Name, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(feedbackSession.FeedbackSessionId, null)) cmd.Parameters.AddWithValue("@FeedbackSessionId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@FeedbackSessionId", feedbackSession.FeedbackSessionId);
                
                  
                if (ReferenceEquals(feedbackSession.Notes, null)) cmd.Parameters.AddWithValue("@Notes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Notes", feedbackSession.Notes);
                
                  
                if (ReferenceEquals(feedbackSession.PersonInterviewed, null)) cmd.Parameters.AddWithValue("@PersonInterviewed", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@PersonInterviewed", feedbackSession.PersonInterviewed);
                
                  
                if (ReferenceEquals(feedbackSession.Date, null)) cmd.Parameters.AddWithValue("@Date", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Date", feedbackSession.Date);
                
                  
                if (ReferenceEquals(feedbackSession.mm, null)) cmd.Parameters.AddWithValue("@mm", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@mm", feedbackSession.mm);
                
                  
                if (ReferenceEquals(feedbackSession.SessionType, null)) cmd.Parameters.AddWithValue("@SessionType", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SessionType", feedbackSession.SessionType);
                
                  
                if (ReferenceEquals(feedbackSession.OverallFeedbackScore, null)) cmd.Parameters.AddWithValue("@OverallFeedbackScore", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@OverallFeedbackScore", feedbackSession.OverallFeedbackScore);
                
                  
                if (ReferenceEquals(feedbackSession.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", feedbackSession.Name);
                
                  
                if (ReferenceEquals(feedbackSession.createdTime, null) ||
                    (feedbackSession.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", feedbackSession.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(FeedbackSession feedbackSession)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = feedbackSession.FeedbackSessionId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [FeedbackSession] WHERE FeedbackSessionId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(feedbackSession);
                else return this.Insert(feedbackSession);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllFeedbackSessions<T>()
            where T : FeedbackSession, new()
        {
            return this.GetAllFeedbackSessions<T>(String.Empty);
        }

        
        public List<T> GetAllFeedbackSessions<T>(String whereClause)
            where T : FeedbackSession, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[FeedbackSession]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T feedbackSession = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("FeedbackSessionId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          feedbackSession.FeedbackSessionId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Notes");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          feedbackSession.Notes = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("PersonInterviewed");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          feedbackSession.PersonInterviewed = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Date");
                      if (!reader.IsDBNull(propertyIndex)) //XS:DATE
                      {
                          
                          feedbackSession.Date = reader.GetDateTime(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("mm");
                      if (!reader.IsDBNull(propertyIndex)) //SHORT
                      {
                          
                          feedbackSession.mm = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("SessionType");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          feedbackSession.SessionType = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("OverallFeedbackScore");
                      if (!reader.IsDBNull(propertyIndex)) //INT32
                      {
                          
                          feedbackSession.OverallFeedbackScore = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          feedbackSession.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          feedbackSession.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(feedbackSession);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified FeedbackSession
        /// </summary>
        /// <returns></returns>
        public int Update(FeedbackSession feedbackSession)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[FeedbackSession] SET 
                                    [Notes] = @Notes, [PersonInterviewed] = @PersonInterviewed, [Date] = @Date, [mm] = @mm, [SessionType] = @SessionType, [OverallFeedbackScore] = @OverallFeedbackScore, [Name] = @Name, [createdTime] = @createdTime
                                    WHERE  [FeedbackSessionId] = @FeedbackSessionId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(feedbackSession.FeedbackSessionId, null)) cmd.Parameters.AddWithValue("@FeedbackSessionId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@FeedbackSessionId", feedbackSession.FeedbackSessionId);
                 //TEXT
                
                if (ReferenceEquals(feedbackSession.Notes, null)) cmd.Parameters.AddWithValue("@Notes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Notes", feedbackSession.Notes);
                 //TEXT
                
                if (ReferenceEquals(feedbackSession.PersonInterviewed, null)) cmd.Parameters.AddWithValue("@PersonInterviewed", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@PersonInterviewed", feedbackSession.PersonInterviewed);
                 //xs:date
                
                if (ReferenceEquals(feedbackSession.Date, null)) cmd.Parameters.AddWithValue("@Date", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Date", feedbackSession.Date);
                 //SHORT
                
                if (ReferenceEquals(feedbackSession.mm, null)) cmd.Parameters.AddWithValue("@mm", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@mm", feedbackSession.mm);
                 //TEXT
                
                if (ReferenceEquals(feedbackSession.SessionType, null)) cmd.Parameters.AddWithValue("@SessionType", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SessionType", feedbackSession.SessionType);
                 //INT32
                
                if (ReferenceEquals(feedbackSession.OverallFeedbackScore, null)) cmd.Parameters.AddWithValue("@OverallFeedbackScore", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@OverallFeedbackScore", feedbackSession.OverallFeedbackScore);
                 //TEXT
                
                if (ReferenceEquals(feedbackSession.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", feedbackSession.Name);
                 //DATETIME
                
                if (ReferenceEquals(feedbackSession.createdTime, null) ||
                    (feedbackSession.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", feedbackSession.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified FeedbackSession
        /// </summary>
        /// <returns></returns>
        public int Delete(FeedbackSession feedbackSession)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[FeedbackSession] 
                                    WHERE  [FeedbackSessionId] = @FeedbackSessionId", this.Schema);
                                    
                
                if (ReferenceEquals(feedbackSession.FeedbackSessionId, null)) cmd.Parameters.AddWithValue("@FeedbackSessionId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@FeedbackSessionId", feedbackSession.FeedbackSessionId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

                  
            
            

        public object LastIdentity { get; set; }
        public string ExecuteAsUser { get; set; }
        
        private SqlConnection CreateSqlConnection() 
        {
            if (String.IsNullOrEmpty(this.ConnectionString))
            {
                SqlConnectionStringBuilder scsb = new SqlConnectionStringBuilder();
                scsb.DataSource = this.DataSourceName;
                scsb.InitialCatalog = this.DBName;
                scsb.IntegratedSecurity = true;
                this.ConnectionString = scsb.ConnectionString;
            }
            
            SqlDataManager.LastConnectionString = this.ConnectionString;
            
            return new SqlConnection(this.ConnectionString);
        }
        
        
        private void InitializeConnection(SqlConnection conn)
        {
            conn.Open();
            if (!String.IsNullOrEmpty(this.ExecuteAsUser))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    cmd.CommandText = String.Format("EXECUTE AS USER='{0}'", this.ExecuteAsUser);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}

      