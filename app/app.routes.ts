export const routes = [
    { path: '', redirectTo: '/main', pathMatch: 'full' },
    {
        path: 'main',
        loadChildren: './pages/main/main.module#MainModule',
        data: { title: 'Main' }
    }
];
