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
                            ServiceLevel = "Standard",
                            OrderCount = "42",
                            MostRecentOrderDate = "02/07/10",
                            Input = new CustomerSummary.CustomerSummaryInput 
                                {Active = true, Number = 1}
                        },
                    new CustomerSummary
                        {
                            Name = "Susan Power", 
                            ServiceLevel = "Standard",
                            OrderCount = "1",
                            MostRecentOrderDate = "02/02/10",
                            Input = new CustomerSummary.CustomerSummaryInput 
                                {Active = false, Number = 2}
                        },
                    new CustomerSummary
                        {
                            Name = "Jim Doe", 
                            ServiceLevel = "Premier",
                            OrderCount = "7",
                            MostRecentOrderDate = "02/09/10",
                            Input = new CustomerSummary.CustomerSummaryInput 
                                {Active = true, Number = 3}
                        },
                };

            return source;
        }
    }
}