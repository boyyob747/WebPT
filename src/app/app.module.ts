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
const routes : Routes = [
  {path : '' , redirectTo: '/trangchu',pathMatch : 'full'},
  {path : 'login' , component:ApploginComponent},
  {path : 'trangchu' , component:ApptrangchuComponent},
  {path : 'lienhe' , component:ApplienheComponent},
  {path : 'khaosat' , component:AppthuchienkhaosatComponent},
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
    ApplienheComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    RouterModule.forRoot(routes),
    LoadingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
