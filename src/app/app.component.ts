import { Component } from '@angular/core';
import { DataService } from './data.service';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  
  cookieValue = 'false';
  constructor(){
  }
  ngOnInit() { 
  }
}
        // "./assets/STYLE/vendor/jquery/jquery.min.js",
        // "./assets/STYLE/vendor/bootstrap/js/bootstrap.bundle.min.js",
        // "./assets/STYLE/vendor/jquery-easing/jquery.easing.min.js",
        // "./assets/STYLE/vendor/datatables/jquery.dataTables.js",
        // "./assets/STYLE/vendor/datatables/dataTables.bootstrap4.js",
        // "./assets/STYLE/js/sb-admin-datatables.min.js",
        // "./assets/STYLE/vendor/chart.js/Chart.min.js",
        // "./assets/STYLE/js/sb-admin.min.js",
        // "./assets/STYLE/js/sb-admin-charts.min.js"