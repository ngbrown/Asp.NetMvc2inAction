namespace MvcApplication2.Models
{
    public class CustomerSummary
    {
        public string Name { get; set; }
        public string ServiceLevel { get; set; }
        public string OrderCount { get; set; }
        public string MostRecentOrderDate { get; set; }

        public CustomerSummaryInput Input { get; set; }

        public class CustomerSummaryInput
        {
            public int Number { get; set; }
            public bool Active { get; set; }
        }
    }
}