import { Injectable } from '@angular/core';
import { ApiService } from './api.service';
import { HttpClient } from '@angular/common/http';

export interface LoginInfo{
  username: string;
  password: string;
}
@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private loggedInStatus = JSON.parse(localStorage.getItem('loggedIn' || 'false'));
  constructor(private api: ApiService, private http: HttpClient) { }
  setLoggedIn(value: boolean){
    this.loggedInStatus = value;
    localStorage.setItem('loggedIn', value.toString());
  }
  get isLoggedIn(){
    return JSON.parse(localStorage.getItem('loggedIn') || this.loggedInStatus.toString());;
  }
  Login(loginInfo: LoginInfo){
    return this.http.post(this.api.auth.login, loginInfo, {
      observe: 'body'
      // headers: this.api.headers
    });
  }
}
