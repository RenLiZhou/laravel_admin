<?php

use App\Common\Enum\ReturnCode;

if (!function_exists('responseSuccess')) {
    /**
     * 成功返回
     * @param array $data
     * @param string $successMsg
     * @param int $httpCode
     * @param string $meta
     * @return \Illuminate\Http\JsonResponse
     */
    function responseSuccess($data = [], string $successMsg = '', int $httpCode = 200, $meta = '')
    {
        $return = [
            'code' => ReturnCode::SUCCESS_CODE,
            'msg' => empty($successMsg) ? ReturnCode::SUCCESS : $successMsg,
            'data' => $data,
            'meta' => $meta
        ];
        return response()->json($return, $httpCode);
    }
}

if (!function_exists('responseError')) {
    /**
     * 错误返回
     * @param int $code
     * @param string $errMsg
     * @param int $httpCode
     * @return \Illuminate\Http\JsonResponse
     */
    function responseError(string $errMsg = '', int $code = 0, int $httpCode = 200)
    {
        $return = [
            'code' => empty($code) ? ReturnCode::ERROR_CODE : $code,
            'exception' => empty($errMsg) ? ReturnCode::ERROR : $errMsg,
        ];
        return response()->json($return, $httpCode);
    }
}

if (!function_exists('resultError')) {
    /**
     * Error data
     * @return Arrar
     */
    function resultError($msg)
    {
        return [
            'result' => false,
            'msg' => $msg
        ];
    }
}

if (!function_exists('resultSuccess')) {
    /**
     * Success data
     * @return Arrar
     */
    function resultSuccess($data = null)
    {
        return [
            'result' => true,
            'data' => $data
        ];
    }
}
