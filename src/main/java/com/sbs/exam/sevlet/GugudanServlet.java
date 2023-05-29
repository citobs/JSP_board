package com.sbs.exam.sevlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8"); // 들어오는 데이터를 UTF-8로 해석
        resp.setCharacterEncoding("UTF-8"); //완성되는 HTML의 인코딩을 UTF-8로 해석
        resp.setContentType("text/html;  charset-utf-8"); //브라우저에게 우리가 만드는 결과물이 UTF-8 이다.


        int dan = Integer.parseInt(req.getParameter("dan"));

//        int i = 1;

        for(int i = 1; i<=9; i++){


        resp.getWriter().append("<div>%d * %d단 = %d <div>".formatted(dan, i, dan*i)); //숫자 %d

        }
    }
}
