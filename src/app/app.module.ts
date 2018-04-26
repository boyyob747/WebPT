import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { AppfooterComponent } from './components/appfooter/appfooter.component';
import { AppheaderComponent } from './components/appheader/appheader.component';
import { AppmenuComponent } from './components/appmenu/appmenu.component';
import { SettingsComponent } from './components/settings/settings.component';
import { ApptrangchuComponent } from './components/apptrangchu/apptrangchu.component';
import { ApploginComponent } from './components/applogin/applogin.component';
import { Routes, RouterModule } from '@angular/router';
import { AppthuchienkhaosatComponent } from './components/appthuchienkhaosat/appthuchienkhaosat.component';
import { ApplienheComponent } from './components/applienhe/applienhe.component';
import { LoadingModule } from 'ngx-loading';
import { DataService } from './data.service';
import { AppthongtincanhanComponent } from './components/appthongtincanhan/appthongtincanhan.component';
import { AppusersComponent } from './components/appusers/appusers.component';
import { AppkhaosatComponent } from './components/appkhaosat/appkhaosat.component';
import { AppsinhvienComponent } from './components/appsinhvien/appsinhvien.component';
import { ApptruongComponent } from './components/apptruong/apptruong.component';
import { AppnganhComponent } from './components/appnganh/appnganh.component';
import { AppthongkeComponent } from './components/appthongke/appthongke.component';
import { AppbaocaoComponent } from './components/appbaocao/appbaocao.component';
import { AppthemuserComponent } from './components/appthemuser/appthemuser.component';
const routes : Routes = [
  {path : '' , redirectTo: '/trangchu',pathMatch : 'full'},
  {path : 'login' , component:ApploginComponent},
  {path : 'trangchu' , component:ApptrangchuComponent},
  {path : 'lienhe' , component:ApplienheComponent},
  {path : 'khaosat' , component:AppthuchienkhaosatComponent},
  {path : 'thongtincanhan' , component:AppthongtincanhanComponent},
  {path : 'danhsachuser' , component:AppusersComponent},
  {path : 'themuser' , component:AppthemuserComponent},
  {path : '**' , redirectTo : '/trangchu'}
]
@NgModule({
  declarations: [
    AppComponent,
    AppfooterComponent,
    AppheaderComponent,
    AppmenuComponent,
    SettingsComponent,
    ApptrangchuComponent,
    ApploginComponent,
    AppthuchienkhaosatComponent,
    ApplienheComponent,
    AppthongtincanhanComponent,
    AppusersComponent,
    AppkhaosatComponent,
    AppsinhvienComponent,
    ApptruongComponent,
    AppnganhComponent,
    AppthongkeComponent,
    AppbaocaoComponent,
    AppthemuserComponent,
    
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    RouterModule.forRoot(routes),
    LoadingModule
  ],
  providers: [DataService],
  bootstrap: [AppComponent]
})
export class AppModule { 
  
}
