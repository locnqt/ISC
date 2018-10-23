import {Injectable} from '@angular/core';
@Injectable()
export class ApiService{
    constructor(){}
    baseUrl= "http://www.saigontech.edu.vn/restful-api/";
    user={
        login:{method:'Post',url:this.baseUrl+'login.php'}
    };
    product={
        getAll : {method: 'GET', url : this.baseUrl + 'products.php'},
        get : {method: 'GET', url : this.baseUrl + 'products.php?id='},
        add : {method: 'POST', url : this.baseUrl + 'product.php'},
        update : {method: 'PUT', url : this.baseUrl + 'product.php?id='},
        delete : {method: 'DELETE', url : this.baseUrl + 'product.php?id='}
    };
}