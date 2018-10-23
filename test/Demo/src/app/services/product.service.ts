import { Injectable } from '@angular/core';
import { ApiService } from './api.service';
import { CookieService } from 'ngx-cookie-service';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
interface Products {
  errorCode: number;
  errorMessage: string;
  products: {
    id: number;
    code: string;
    name: string;
    unit: string;
    price: number;
    description: string;
  }
}
@Injectable({
  providedIn: 'root'
})
export class ProductService {

  private headerOptions;
  public updateId;
  constructor(private apiService : ApiService, private http : HttpClient,private cookies: CookieService) {
   

    var headers = new HttpHeaders({
      'Authorization':'Bearer ' +  this.cookies.get('accessToken'),
      'Content-Type': 'application/json'
    });
    this.headerOptions = {
      headers: headers,
      observe: 'body'
    }
  }
  getAll() {    
    let url = this.apiService.product.getAll.url;
    return this.http.get<Products>(url, this.headerOptions);
  }
  get(id) {
    let url = this.apiService.product.get.url + id;
    return this.http.get(url, this.headerOptions);
  }
  add(data) {
    let url = this.apiService.product.add.url;
    return this.http.post(url, data, this.headerOptions);
  }
  update(id, data) {
 
    let url = this.apiService.product.update.url+id;
    console.log(url)
    return this.http.put(url, data, this.headerOptions);
  }
  delete(id) {
    let url = this.apiService.product.delete.url + id;
    return this.http.delete(url, this.headerOptions);
  }
}
