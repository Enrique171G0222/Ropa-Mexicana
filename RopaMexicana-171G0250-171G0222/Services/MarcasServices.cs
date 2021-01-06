using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RopaMexicana_171G0250_171G0222.Models;

namespace RopaMexicana_171G0250_171G0222.Services
{
    public class MarcasServices
    {
        public List<MarcaAfiliada>marcaAfiliadas { get; set; }

        public MarcasServices()
        {
            using (ropa_mexicanaContext context = new ropa_mexicanaContext())
            {
                Repositories.Repository<MarcaAfiliada> repos = new Repositories.Repository<MarcaAfiliada>(context);
                marcaAfiliadas = repos.GetAll().OrderBy(x => x.Marca).ToList();
            }

        }
    }
}
