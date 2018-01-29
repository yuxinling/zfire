package com.dev.huining.soft.web.zfire.dto.ctx;

/**
 * User: yu_xinling
 * Date: 13-9-1
 * Time: 下午8:10
 */
public enum StatusCode {
    FAILURE(500),SUCCESS(200),UNKOWN_ERROR(50000);
    private int code;

    private StatusCode(int code){
        this.code = code;
    }

    public int getCode(){
        return this.code;
    }
}
