/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { AppthemuserComponent } from './appthemuser.component';

describe('AppthemuserComponent', () => {
  let component: AppthemuserComponent;
  let fixture: ComponentFixture<AppthemuserComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AppthemuserComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AppthemuserComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
