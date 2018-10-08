import { Injectable } from "@angular/core";
import { HttpInterceptor, HttpRequest, HttpHandler, HttpEvent, HttpHeaders, HttpResponse } from "@angular/common/http";
import { Observable } from "rxjs";
import { Router } from "@angular/router";
import { CookieService } from "ngx-cookie-service";
import { tap } from "rxjs/operators/tap";
import { AuthService } from "./services/auth.service";

@Injectable()

export class AppInterceptor implements HttpInterceptor {
    constructor(private route: Router, private cookieservice: CookieService, private authService: AuthService ){

    }
    intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>>{
        const strCookie= this.cookieservice.get('userInfo');
        if(strCookie){
            const loginResult = JSON.parse(strCookie);
            if(loginResult){
                const token = loginResult.token;
                const req = request.clone({
                    headers: new HttpHeaders().append('Authorization',token)
                });
                return next.handle(req).pipe(
                    tap(event => {},
                        error => {
                            if(error instanceof HttpResponse){
                                if(this.route.url!=='/login'&&(error.status===401)){
                                    window.alert("Phiên làm việc hết hạn! vui lòng đăng nhập lại!")
                                    this.authService.setLoggedIn(false);
                                    this.route.navigate(['/login']);
                                    window.location.reload();
                                }
                            }
                        })
                );
            }
        }
        return next.handle(request);
    }
}