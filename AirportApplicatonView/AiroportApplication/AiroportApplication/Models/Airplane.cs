//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AiroportApplication.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Airplane
    {
        public int ID { get; set; }
        public string NumberAirplane { get; set; }
        public int IDTypeAirplane { get; set; }
        public int NumberOfSeats { get; set; }
        public string SpeedOfFlight { get; set; }
        public int IDRoute { get; set; }
        public string Picture { get; set; }
    
        public virtual TypeAirplane TypeAirplane { get; set; }
        public virtual Route Route { get; set; }
    }
}
