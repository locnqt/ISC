import { Injectable } from '@angular/core';
import {map} from 'rxjs/operators';
import {ApiService} from './api.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';
interface LoginObject {
  errorCode: number;
  errorMessage: string;
  data: {
    userId: number;
    account: string;
    fullName: string;
    accessToken: string;
  }
}
@Injectable()
export class UserService {

  constructor(private apiService : ApiService, private http : HttpClient ) { }

  login(userName: string, password: string) {
    let headers = new HttpHeaders({ 'Content-Type': 'application/json' });    
    let data = {
      username: userName,
      password: password
    };
    let url = this.apiService.user.login.url;
    return this.http.post<LoginObject>(url, data, { headers: headers, observe: 'body' });
  }
}
