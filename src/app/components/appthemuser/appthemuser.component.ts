import { Component, OnInit } from '@angular/core';
import { DataService } from '../../data.service';

@Component({
  selector: 'app-appthemuser',
  templateUrl: './appthemuser.component.html',
  styleUrls: ['./appthemuser.component.css']
})
export class AppthemuserComponent implements OnInit {
  private chucvus:Chucvu;
  public loading = false;
  private name:string;
  private GioiTinh:string;
  private username:string;
  private NgaySinh:string;
  private MaChucVu:string;
  private email:string;
  private DiaChi:string;
  private password:string;

  constructor(private dataService:DataService){
    this.onLoad();
  }
  onLoad(){
    this.loading = true;
    this.dataService.getChucVu().subscribe(
      res=>{
        this.loading = false;
        this.chucvus = res;
      });
  }
  ngOnInit() {

  }
  onAddUser(){
    console.log(this.GioiTinh);
  }
}
 interface Chucvu {
        MaCV: number;
        TenCV: string;
}