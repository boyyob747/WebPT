import { Component, OnInit } from '@angular/core';
import { DataService } from '../../data.service';
@Component({
  selector: 'app-applogin',
  templateUrl: './applogin.component.html',
  styleUrls: ['./applogin.component.css']
})
export class ApploginComponent implements OnInit {
  isLoginError:boolean = false;
  private result:Array<any>;
  constructor(private dataService:DataService){
    this.onLoad();
  }
  onLoad(){
    
  }
  ngOnInit() {
    
  }
  onClickLogin(mUsername,mPassword){
    this.dataService.doLogin(mUsername,mPassword).subscribe(
      res=>{
        const isCanLogin = res[0].isCanLogin;
        const userId = res[0].UserID;
        if (isCanLogin == 1){
          localStorage.setItem('isLogined','true');
          localStorage.setItem('mUsername',mUsername);
          localStorage.setItem('userId',userId);
          window.location.href = '/trangchu';
        }else{
          this.isLoginError = true;
        }
      }
    );
  }
}
