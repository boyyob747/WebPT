/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { AppthongkeComponent } from './appthongke.component';

describe('AppthongkeComponent', () => {
  let component: AppthongkeComponent;
  let fixture: ComponentFixture<AppthongkeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AppthongkeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AppthongkeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
