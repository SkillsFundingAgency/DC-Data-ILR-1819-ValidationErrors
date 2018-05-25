using System.Data.Entity;

namespace ESFA.DC.Data.ILR._1819.ValdationErrors.Model.Interfaces
{
    public interface IValidationErrors
    {
        DbSet<Rule> Rules { get; set; }
    }
}
