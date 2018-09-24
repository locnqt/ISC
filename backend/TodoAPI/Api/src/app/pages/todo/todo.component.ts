import { Component, OnInit } from '@angular/core';
import { TodoService } from '../../services/todo.service';
import {Todo} from '../../services/todo.service';
@Component({
  selector: 'app-todo',
  templateUrl: './todo.component.html',
  styleUrls: ['./todo.component.css']
})
export class TodoComponent implements OnInit {
  todoList: any;
  data: Todo = {
    typE_ID:1
  } as Todo;
  constructor(private todoServices: TodoService) {
    this.todoServices.getAll().subscribe((res) => {this.todoList=res}); 
  }

  ngOnInit() {
  }
  save(){
    this.todoServices.getAll().subscribe((res) => {console.log(res)}); 
  }
}
