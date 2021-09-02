<?php

namespace App\Exceptions;


use Exception;
use App\Common\Enum\ReturnCode;

class OrException extends Exception
{

    public function __construct($error)
    {
        $returnCode = new ReturnCode();
        if (!empty($error) && isset($returnCode->data[$error])) {
            $this->message = $returnCode->data[$error]['msg'];
            $this->code = $returnCode->data[$error]['code'];
        } else{
            //自定义错误
            $this->message = empty($error) ? ReturnCode::ERROR : $error ;
            $this->code = ReturnCode::ERROR_CODE;
        }
    }

}
