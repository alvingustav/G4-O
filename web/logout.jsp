<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    // Menghapus sesi pengguna
    HttpSession session = request.getSession(false);
    if (session != null) {
        session.invalidate(); // Hapus sesi
    }
    response.sendRedirect("index.jsp"); // Redirect ke halaman utama
%>
