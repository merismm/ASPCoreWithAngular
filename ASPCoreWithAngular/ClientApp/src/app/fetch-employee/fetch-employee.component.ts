import { Component } from '@angular/core';
import { EmployeeService } from '../services/employee.service';
import { Employee } from 'src/models/employee';

@Component({
  selector: 'app-fetch-employee',
  templateUrl: './fetch-employee.component.html',
  styleUrls: ['./fetch-employee.component.css']
})
export class FetchEmployeeComponent {

  public empList: Employee[];

  constructor(private _employeeService: EmployeeService) {
    this.getEmployees();
  }

  getEmployees() {
    this._employeeService.getEmployees().subscribe(
      (data: Employee[]) => this.empList = data
    );
  }

}
