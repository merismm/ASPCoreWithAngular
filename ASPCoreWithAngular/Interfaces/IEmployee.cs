﻿using ASPCoreWithAngular.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ASPCoreWithAngular.Interfaces
{
    public interface IEmployee
    {
        IEnumerable<Employee> GetAllEmployees();
       
    }
}
