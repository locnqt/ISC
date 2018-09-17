import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';



@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  constructor(private http: HttpClient){

  }

  title = 'Bunch of banana';
  ilogic = true;
  show = true;
  selectedId = null;
  oName = '';
  oValue = '';
  banana = null;
  ngOnInit(){
    this.loadData();
  }

  loadData(){
    this.http.get('http://10.16.1.12:3000/banana').subscribe(data => {
      if(data != null){
        this.banana = data;
        //console.log(data);
      }
    });
  }

  sayHello(name){
    alert("Hello " + name + " noob!");
  }
  pcolor = "textBlue";
  change(){
    if(this.ilogic === true){
      this.ilogic = false;
    }
    else{
      this.ilogic = true;
    }
  }

  changeColor(){
    if(this.pcolor === "textBlue"){
      this.pcolor = "textGreen";
    }
    else{
      this.pcolor = "textBlue";
    }
  }

  copyAction(tb1, tb2){
    tb2.value = tb1.value;
  }

  addNewTableValue(tname, tvalue){
    this.http.post('http://10.16.1.12:3000/banana', {name: tname, value: tvalue}).subscribe((data:any) =>{
      alert(data.message);
      this.loadData();
    });
  }

  removeTableValue(tindex){
    this.http.delete('http://10.16.1.12:3000/banana/' + this.banana[tindex]._id).subscribe((data:any) =>{
      alert(data.message);
      this.loadData();
    });
  }

  changeBehavior(){
    this.show = this.show === true ? false : true;
  }

  addEditTable(index, name, value){
    this.selectedId = index;
    this.oName = name;
    this.oValue = value;
  }

  changeTableValue(name, value){
    if((this.selectedId > -1) && (this.selectedId != null)){
      this.http.put('http://10.16.1.12:3000/banana', {id: this.banana[this.selectedId]._id, name: name, value: value}).subscribe((data:any) =>{
        alert(data.message);
        this.loadData();
      });
    }
  }
}
