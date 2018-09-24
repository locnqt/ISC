import { Routes, RouterModule } from '@angular/router';
import { TodoComponent } from "./pages/todo/todo.component";
import { CustomerComponent } from './pages/customer/customer.component';

export const AppRoutes: Routes = [
    {
        path: 'todo',
        component: TodoComponent,
    },
    {
        path: 'cus',
        component: CustomerComponent,
    }
]