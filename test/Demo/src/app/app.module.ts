import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import {HttpClientModule} from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { CookieService } from 'ngx-cookie-service';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';


import { ApiService } from './services/api.service';
import { UserService } from './services/user.service';
import { ProductComponent } from './product/product.component';
import { ProductService } from './services/product.service';
@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    ProductComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot([
      { path: '', component: LoginComponent },
      { path: 'login', component: LoginComponent },

      { path: 'product', component:  ProductComponent  }
    ])
  ],
  providers: [CookieService, ApiService, UserService, ProductService],
  bootstrap: [AppComponent]
})
export class AppModule { }
