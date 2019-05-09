import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {HttpClientModule} from '@angular/common/http';
import { AppComponent } from './app.component';
import { TodoComponent } from './pages/todo/todo.component';

import { AppRoutes } from './app.routing';
import { Routes, RouterModule, Router } from '@angular/router';
import { CustomerComponent } from './pages/customer/customer.component';
import { EnvServiceProvider } from './services/env.service.provider';

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
  providers: [EnvServiceProvider],
  bootstrap: [AppComponent]
})
export class AppModule { }
