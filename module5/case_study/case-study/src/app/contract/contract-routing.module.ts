import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {RouterModule, Routes} from '@angular/router';
import {ListContractComponent} from './list-contract/list-contract.component';
import {CreateContractComponent} from './create-contract/create-contract.component';

const routes: Routes = [
  {
    path: 'contract',
    component: ListContractComponent
  },
  {
    path: 'contract-create',
    component: CreateContractComponent
  }
];

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ]
})
export class FacilityRoutingModule { }
