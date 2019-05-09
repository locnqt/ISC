import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import { ApiService } from './api.service';
import { EnvService } from '../services/env.service';

const apiName='todo';
export interface Todo{
  id: number,
  name: string,
  isComplete: boolean,
  typE_ID: number
}
@Injectable({
  providedIn: 'root'
})
export class TodoService {

  constructor(private env: EnvService, private apiservices: ApiService, private http: HttpClient ) {
    if(env.enableDebug) {
      console.log('Debug mode enabled!');
    } 
  }
  getAll(){
    return this.http.get(this.apiservices.baseUrl+apiName, {
      observe: 'body'
    });
  }
  get(id){
    return this.http.get(this.apiservices.baseUrl+apiName+'/'+id, {
      observe: 'body'
    });
  }
  add(data){
    return this.http.post(this.apiservices.baseUrl+apiName, data, {
      observe: 'body',
      headers: this.apiservices.headers
    });
  }
  update(id, data){
    return this.http.put(this.apiservices.baseUrl+apiName, data, {
      observe: 'body'
    });
  }
  delete(id){
    return this.http.delete(this.apiservices.baseUrl+apiName+'/'+id, {
      observe: 'body'
    });
  }
}
