<?php

namespace App\Service;

use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redis;

class SysService
{
    const SYS_INFO_KEY = 'sysInfo';

    public static function getSystemInfo(bool $isNew = false) : array
    {
        if ($isNew || !Cache::has(self::SYS_INFO_KEY)) {
            $mysqlVs = DB::select('SELECT VERSION() AS ver'); // mysql 版本

            $systemInfo = [
                'url'             => $_SERVER['HTTP_HOST'],   // 域名
                'document_root'   => $_SERVER['DOCUMENT_ROOT'], // 网站目录
                'server_os'       => PHP_OS,                    // 服务器系统
                'server_port'     => $_SERVER['SERVER_PORT'],   // web服务端口号
                'server_ip'       => $_SERVER['SERVER_ADDR'],   // 服务器ip
                'server_soft'     => $_SERVER['SERVER_SOFTWARE'], // web运行环境
                'php_version'     => PHP_VERSION,               // php版本
                'mysql_version'   => $mysqlVs[0]->ver,          // mysql版本
                'max_upload_size' => ini_get('upload_max_filesize') // 上传文件大小
            ];
            Cache::put(self::SYS_INFO_KEY, $systemInfo, 86400);
        }
        return Cache::get(self::SYS_INFO_KEY);

    }

    public static function cleanSysInfo()
    {
        Cache::forget(self::SYS_INFO_KEY);
    }
}
