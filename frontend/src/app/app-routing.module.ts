import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuard } from './auth/auth.guard'; // Importa el guard

import { DashboardComponent } from './dashboard/dashboard.component'; // El componente que quieres proteger

const routes: Routes = [
  {
    path: 'dashboard',
    component: DashboardComponent,
    canActivate: [AuthGuard], // Protege esta ruta
  },
  {
    path: '',
    redirectTo: '/login',
    pathMatch: 'full',
  },
  {
    path: 'pages',
    loadChildren: () =>
    import('./pages/pages.module').then(m => m.PagesModule)
  },
  { path: '**', redirectTo: 'pages/companies' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule { }
