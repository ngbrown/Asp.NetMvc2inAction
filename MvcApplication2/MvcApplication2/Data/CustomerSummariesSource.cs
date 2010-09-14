namespace MvcApplication2.Data
{
    using System.Collections.Generic;

    using Models;

    public class CustomerSummariesSource
    {
        public IEnumerable<CustomerSummary> GetAll()
        {
            var source = new[]
                {
                    new CustomerSummary
                        {
                            Name = "John Smith", 
                            Active = true,
                            ServiceLevel = "Standard",
                            OrderCount = "42",
                            MostRecentOrderDate = "02/07/10"
                        },
                    new CustomerSummary
                        {
                            Name = "Susan Power", 
                            Active = false,
                            ServiceLevel = "Standard",
                            OrderCount = "1",
                            MostRecentOrderDate = "02/02/10"
                        },
                    new CustomerSummary
                        {
                            Name = "Jim Doe", 
                            Active = true,
                            ServiceLevel = "Premier",
                            OrderCount = "7",
                            MostRecentOrderDate = "02/09/10"
                        },
                };

            return source;
        }
    }
}