/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { AppkhaosatComponent } from './appkhaosat.component';

describe('AppkhaosatComponent', () => {
  let component: AppkhaosatComponent;
  let fixture: ComponentFixture<AppkhaosatComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AppkhaosatComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AppkhaosatComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
