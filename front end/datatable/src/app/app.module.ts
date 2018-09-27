import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { DataTablesModule } from 'angular-datatables';
import { AppComponent } from './app.component';
import { WithAjaxComponent} from "./with-ajax.component"
// import { TableComponent } from './table/table.component';

@NgModule({
  declarations: [
    AppComponent,
    WithAjaxComponent
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
