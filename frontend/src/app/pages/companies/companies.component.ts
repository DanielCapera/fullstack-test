import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { CompaniesService } from './companies.service';

@Component({
  selector: 'app-companies',
  templateUrl: './companies.component.html',
  styleUrls: ['./companies.component.css'],
})
export class CompaniesComponent implements OnInit {
  companies: any[] = [];
  form: FormGroup;
  editingId: number | null = null;

  constructor(private fb: FormBuilder, private companiesService: CompaniesService) {
    this.form = this.fb.group({
      name: ['', Validators.required],
      sector: [''],
      phone: ['', Validators.required],
      address: [''],
      city_id: [null, Validators.required],
      assets: [0],
      liabilities: [0],
    });
  }

  ngOnInit(): void {
    this.loadCompanies();
  }

  loadCompanies() {
    this.companiesService.getAll().subscribe((data) => {
      this.companies = data;
    });
  }

  submit() {
    if (this.form.invalid) return;

    const formData = this.form.value;

    if (this.editingId) {
      this.companiesService.update(this.editingId, formData).subscribe(() => {
        this.loadCompanies();
        this.form.reset();
        this.editingId = null;
      });
    } else {
      this.companiesService.create(formData).subscribe(() => {
        this.loadCompanies();
        this.form.reset();
      });
    }
  }

  edit(company: any) {
    this.editingId = company.id;
    this.form.patchValue(company);
  }

  delete(id: number) {
    if (confirm('¿Estás seguro de eliminar esta compañía?')) {
      this.companiesService.delete(id).subscribe(() => {
        this.loadCompanies();
      });
    }
  }

  cancelEdit() {
    this.editingId = null;
    this.form.reset();
  }
}
