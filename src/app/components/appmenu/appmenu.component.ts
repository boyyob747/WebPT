import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-appmenu',
  templateUrl: './appmenu.component.html',
  styleUrls: ['./appmenu.component.css']
})
export class AppmenuComponent implements OnInit {
  public isLogined = false;
  public mUsername = "";
  constructor(private router:Router) { }

  ngOnInit() {
    if (localStorage.getItem('isLogined') == 'true'){
      this.isLogined = true;
      this.mUsername = localStorage.getItem('mUsername');
    }
  }
  onClickLogout(){
    if (localStorage.getItem('isLogined') == 'true'){
      this.isLogined = false;
      this.mUsername = "";
      localStorage.removeItem('isLogined');
      localStorage.removeItem('mUsername');
      localStorage.removeItem('userId');
    }
  }
  test(){
    this.router.navigate['/trangchu'];
   }
}
