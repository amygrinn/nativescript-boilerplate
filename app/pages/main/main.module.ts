import { NgModule, NO_ERRORS_SCHEMA } from '@angular/core';
import { NativeScriptRouterModule } from 'nativescript-angular/router';
import { NativeScriptModule } from 'nativescript-angular/nativescript.module';

import { MainComponent } from './main.component';

export const routerConfig = [{
    path: '',
    component: MainComponent
}]
@NgModule({
    schemas: [NO_ERRORS_SCHEMA],
    imports: [
        NativeScriptModule,
        NativeScriptRouterModule,
        NativeScriptRouterModule.forChild(routerConfig),
    ],
    declarations: [
        MainComponent
    ]
})
export class MainModule {

}
