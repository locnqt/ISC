import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {HttpClientModule} from '@angular/common/http';
import { AppComponent } from './app.component';
import { TodoComponent } from './pages/todo/todo.component';

import { AppRoutes } from './app.routing';
import { Routes, RouterModule, Router } from '@angular/router';
import { CustomerComponent } from './pages/customer/customer.component';
@NgModule({
  declarations: [
    AppComponent,
    TodoComponent,
    CustomerComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    RouterModule.forRoot(AppRoutes)
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
