<?php
use Illuminate\Support\Facades\Route;

Route::prefix('admin')->name('admin.')->group(function () {
    Route::get('login', 'LoginController@index')->name('login');
    Route::post('signIn', 'LoginController@signIn')->name('sign.in');

    Route::middleware(['guest:admin'])->group(function () {
        Route::get('index', 'IndexController@index')->name('index');
        Route::get('first', 'IndexController@first')->name('first');
        Route::get('forbidden', 'IndexController@forbidden')->name('403');
        Route::put('cache', 'IndexController@flushCache')->name('cache.flush');
        Route::delete('cache', 'IndexController@cleanCache')->name('cache.clean');
        Route::get('logout', 'LoginController@logout')->name('logout');
        Route::middleware(['rbac','adminlog'])->group(function () {
            // 管理员
            Route::resource('admin', 'AdminsController', ['except' => ['show']]);
            Route::put('admin/{admin}', 'AdminsController@update')->name('admin.update');
            Route::patch('admin/{admin}', 'AdminsController@updateStatus')->name('admin.active');
            Route::get('admin/{admin}/password', 'AdminsController@editPwd')->name('admin.safe');
            Route::patch('admin/{admin}/password', 'AdminsController@updatePwd')->name('admin.safe');

            // 权限
            Route::resource('rule', 'RulesController', ['except' => ['show']]);
            Route::post('rule/{rule}/islog', 'RulesController@updateIsLog')->name('rule.islog'); //设置是否记录日志
            Route::post('rule/{rule}/sort', 'RulesController@updateSort')->name('rule.sort'); //修改排序

            //角色
            Route::resource('role', 'RolesController', ['except' => ['show', 'create', 'edit']]);
            Route::get('role/{role}/rule', 'RolesController@setRules')->name('role.set');
            Route::patch('role/{role}/rule', 'RolesController@settedRules')->name('role.setted');

            Route::get('system/adminlog', 'SystemsController@adminlog')->name('admin.adminlog');
        });

    });
});
