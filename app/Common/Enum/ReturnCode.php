<?php

namespace App\Common\Enum;

use phpDocumentor\Reflection\Types\This;

class ReturnCode
{
    const SUCCESS = 'Success';
    const SUCCESS_CODE = 0; //公共成功返回code（保留此code）

    const ERROR = 'Error';
    const ERROR_CODE = 1; //通用错误（保留此code）

    public $data = [
        'notLogin' => [
            'code' => 1001,
            'msg' => '您未登录',
        ],
        'notPermission' => [
            'code' => 1002,
            'msg' => '没有权限',
        ],
        'missingParam' => [
            'code' => 1003,
            'msg' => '参数缺失',
        ]
    ];

    /**
     * 错误码转化
     * @param string $key
     * @return \Illuminate\Http\JsonResponse
     */
    public function getCode(string $key)
    {
        if(!empty($key) && isset($this->data[$key])){
            return $this->data[$key]['code'];
        }
        return self::ERROR_CODE;

    }

    /**
     * 错误码转化
     * @param string $key
     * @return \Illuminate\Http\JsonResponse
     */
    public function getMsg(string $key)
    {
        if(!empty($key) && isset($this->data[$key])){
            return $this->data[$key]['msg'];
        }
        return self::ERROR;
    }

}
