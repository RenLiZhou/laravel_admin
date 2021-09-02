<?php

namespace App\Http\Middleware;

use App\Common\Enum\ReturnCode;
use App\Models\Admin;
use App\Service\AdminService;
use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

class Rbac
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $routeName = Route::currentRouteName();
        $admin = Auth::guard('admin')->user();
        $rules = AdminService::getAdminRules($admin->id);
        if (!in_array($routeName, $rules)) {
            if ($request->expectsJson()){
                $ReturnCode = new ReturnCode();
                return responseError($ReturnCode->getMsg('notPermission'), $ReturnCode->getCode('notPermission'));
            }
            return redirect()->route('admin.403');
        }

        return $next($request);
    }
}
