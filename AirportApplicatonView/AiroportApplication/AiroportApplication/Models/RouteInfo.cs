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
    
    public partial class RouteInfo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RouteInfo()
        {
            this.Route = new HashSet<Route>();
        }
    
        public int ID { get; set; }
        public System.DateTime DateTimeDeparture { get; set; }
        public System.DateTime DateTimeArrival { get; set; }
        public int CountSaleTicket { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Route> Route { get; set; }
    }
}
