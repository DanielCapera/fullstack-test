import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CompaniesModule } from './companies/companies.module';
import { PagesRoutingModule } from './pages-routing.module';

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    PagesRoutingModule,
    CompaniesModule
  ]
})
export class PagesModule { }
