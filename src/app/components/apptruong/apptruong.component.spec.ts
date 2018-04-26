/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { ApptruongComponent } from './apptruong.component';

describe('ApptruongComponent', () => {
  let component: ApptruongComponent;
  let fixture: ComponentFixture<ApptruongComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ApptruongComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ApptruongComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
