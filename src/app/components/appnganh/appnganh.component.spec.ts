/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { AppnganhComponent } from './appnganh.component';

describe('AppnganhComponent', () => {
  let component: AppnganhComponent;
  let fixture: ComponentFixture<AppnganhComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AppnganhComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AppnganhComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
