package com.sbs.exam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

public class Rq {
    private final HttpServletRequest req;
    private final HttpServletResponse resp;

    public Rq(HttpServletRequest req, HttpServletResponse resp) {
        this.req = req;
        this.resp = resp;

        try {
            req.setCharacterEncoding("UTF-8"); // 들어오는 데이터를 UTF-8로 해석
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        resp.setCharacterEncoding("UTF-8"); //완성되는 HTML의 인코딩을 UTF-8로 해석
        resp.setContentType("text/html; charset-utf-8"); //브라우저에게 우리가 만드는 결과물이 UTF-8 이다.

        Rq rq = new Rq(req, resp);
        int dan = rq.getIntParam("dan",9 );
        int limit = rq.getIntParam("limit",9);

        rq.appendBody("<h1>%d단</h1>\n".formatted(dan));

        for(int i = 1; i <= limit; i++){
            rq.appendBody("<div>%d * %d = %d</div>\n".formatted(dan, i, dan*i));
        }


    }

    public int getIntParam(String paramName, int defaultValue) {
        String value = req.getParameter(paramName);

        if(value == null) {
            return defaultValue;
        }
        try{
            return Integer.parseInt(value);

        } catch( NumberFormatException e) {
            return defaultValue;
        }
    }
    public void appendBody(String str){
        try {
            resp.getWriter().append(str);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

}
