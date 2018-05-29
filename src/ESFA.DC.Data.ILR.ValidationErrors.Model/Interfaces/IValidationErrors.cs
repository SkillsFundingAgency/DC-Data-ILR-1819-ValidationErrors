using System.Data.Entity;

namespace ESFA.DC.Data.ILR.ValidationErrors.Model.Interfaces
{
    public interface IValidationErrors
    {
        DbSet<Rule> Rules { get; set; }
    }
}
