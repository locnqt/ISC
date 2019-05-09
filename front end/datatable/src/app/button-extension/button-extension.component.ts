import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-button-extension',
  templateUrl: './button-extension.component.html',
  styleUrls: ['./button-extension.component.css']
})
export class ButtonExtensionComponent implements OnInit {

  constructor() { }

  dtOptions: any = {};

  ngOnInit(): void {
    this.dtOptions = {
      // Declare the use of the extension in the dom parameter
      dom: 'Bfrtip',
      // Configure the buttons
      buttons: [
        'columnsToggle',
        'colvis',
        'copy',
        'print',
        'excel',
        {
          text: 'Some button',
          key: '1',
          action: function (e, dt, node, config) {
            alert('Button activated');
          }
        }
      ]
    };
  }

}
