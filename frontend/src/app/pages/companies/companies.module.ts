import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';

import { CompaniesComponent } from './companies.component';
import { CompaniesRoutingModule } from './companies-routing.module';

@NgModule({
  declarations: [CompaniesComponent],
  imports: [
    CommonModule,
    ReactiveFormsModule,
    CompaniesRoutingModule
  ]
})
export class CompaniesModule {}
