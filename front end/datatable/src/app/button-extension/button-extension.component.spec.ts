import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ButtonExtensionComponent } from './button-extension.component';

describe('ButtonExtensionComponent', () => {
  let component: ButtonExtensionComponent;
  let fixture: ComponentFixture<ButtonExtensionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ButtonExtensionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ButtonExtensionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
