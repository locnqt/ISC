import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { DataTablesModule } from 'angular-datatables';
import { AppComponent } from './app.component';
import { ButtonExtensionComponent } from './button-extension/button-extension.component'
// import { TableComponent } from './table/table.component';

@NgModule({
  declarations: [
    AppComponent,
    ButtonExtensionComponent
    // TableComponent
  ],
  imports: [
    BrowserModule,
    DataTablesModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
