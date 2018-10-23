import { Component, OnInit,ViewEncapsulation } from '@angular/core';
import {UserService} from '../services/user.service'
import {Router} from '@angular/router';
import { CookieService } from 'ngx-cookie-service';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  constructor(private cookies:CookieService, private router:Router, private userService:UserService) { }
  username: string = '';
  password: string = '';
  message: string ='';
  ngOnInit() {
  }
  
  login(){
    this.userService.login(this.username,this.password).subscribe(res => {
      if (res.errorCode > 0) {
        this.message = res.errorMessage;
        console.log(res)
      } else {
        // this.cookies.setObject( 'user', res.data );
        // this.router.navigate(['/admin/reader']);
        this.cookies.set("accessToken", res.data.accessToken);
        //lay username
        this.cookies.set("accountName", res.data.account);
  
        // alert(this.cookie.get("accessToken"));
        // alert(this.cookie.get("accountName"));
        this.router.navigate(['/product']);
        console.log(res)
      }
    });
  }

}
