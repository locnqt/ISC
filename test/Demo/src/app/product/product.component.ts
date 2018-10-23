import { Component, OnInit } from '@angular/core';
import { ProductService } from '../services/product.service';
declare var $ : any;
var self : any;
var tbl : any;
var infoData: any;
@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.css']
})
export class ProductComponent implements OnInit {
  products: any;
  updateId:any;
  constructor( private productService : ProductService ) {
    this.loadData();
  }
  private loadData() {
    this.productService.getAll().subscribe(result => {
      this.products = result['products'];
    });
  }
  ngOnInit() {
    $("#radMale, #radFemale").iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
    
    //initialize modal
    $("#popup").modal({show: false}).on('show.bs.modal', function(){
      var id = $("#hidId").val();
      if (id == 0) { //add
        $("#txtCode").val('');        
        $("#txtName").val('');
        $("#txtUnit").val('');
        $("#txtPrice").val('');
        $("#txtDescription").val('');
      } 
      else { //update
        $("#txtCode").val(infoData.code);        
        $("#txtName").val(infoData.name);
        $("#txtUnit").val(infoData.unit);
        $("#txtPrice").val(infoData.price);
        $("#txtDescription").val(infoData.description);
      }
    });

    $("#btnAdd").click(function(){
      $("#hidId").val(0);
      $("#popup").modal('show');
    });

    
  }
  save() {
    //declare data for submiting
    var id = $("#hidId").val();
    var data = {
      code: $.trim($("#txtCode").val()),
      name: $.trim($("#txtName").val()),
      unit: $.trim($("#txtUnit").val()),
      price: $.trim($("#txtPrice").val()),
      description: $.trim($("#txtDescription").val())
    }

    if (id == 0) {
      this.productService.add(data).subscribe(res => {
        if (res['errorCode'] == 0) {
          $("#popup").modal('hide');
          this.loadData();
        } else {          
          $.alert(res['errorMessage']);
        }
      });
    } else {
      this.productService.update(id, data).subscribe(res => {
        if (res['errorCode'] == 0) {
          $("#popup").modal('hide');
          this.loadData();
        } else {          
          $.alert(res['errorMessage']);
        }
      });
    }
  }
  update(event, id) {
    $("#hidId").val(id);
    this.productService.get(id).subscribe(result => {      
      infoData = result['product'];
      $("#popup").modal('show');
    });    
    event.preventDefault();
  }
  delete(event, id) {
    $("#hidId").val(id);
    this.productService.delete(id).subscribe(result => {
      this.loadData();
    });    
    event.preventDefault();
  }
}
