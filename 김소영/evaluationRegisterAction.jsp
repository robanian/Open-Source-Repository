<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="evaluation.EvaluationDTO" %>
<%@ page import="evaluation.EvaluationDAO" %>
<%@ page import="java.io.PrintWriter" %>

<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주도</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if(userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 해주세요.');");
			script.println("location.href = 'userLogin.jsp';");
			script.println("<script>");
			script.close();
			return;
		}
		
		String guideName = null;
		int year = 0;
		String month = null;
		String day = null;
		String evaluationTitle = null;
		String evaluationContent=null;
		String totalScore = null;
		
		if(request.getParameter("guideName") != null) {
			guideName = request.getParameter("guideName");
		}
		if(request.getParameter("year") != null) {
			try{
				year = Integer.parseInt(request.getParameter("year"));
			} catch (Exception e) {
				System.out.println("연도 데이터 오류");
			}
		}
		if(request.getParameter("month") != null) {
			month = request.getParameter("month");
		}
		if(request.getParameter("day") != null) {
			day = request.getParameter("day");
		}
		if(request.getParameter("evaluationTitle") != null) {
			evaluationTitle = request.getParameter("evaluationTitle");
		}
		if(request.getParameter("evaluationContent") != null) {
			evaluationContent = request.getParameter("evaluationContent");
		}
		if(request.getParameter("totalScore") != null) {
			totalScore = request.getParameter("totalScore");
		}
		if(guideName == null || year == 0 || month == null || day == null || evaluationTitle == null || evaluationContent == null || totalScore == null || evaluationTitle.equals("") || evaluationContent.equals("")) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.');");
			script.println("history.back();");
			script.println("<script>");
			script.close();
			return;
		}
		EvaluationDAO evaluationDAO = new EvaluationDAO();
		int result = evaluationDAO.write(new EvaluationDTO(0, userID, guideName, year, month, day, evaluationTitle, evaluationContent, totalScore, 0));
		if(result == -1) {
			PrintWriter script = response.getWriter();
			script.println("alert('리뷰 등록을 실패했습니다.');");
			script.println("history.back();");
			script.println("<script>");
			script.close();
			return;
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'index.jsp';");
			script.println("<script>");
			script.close();
			return;
		}
	%>
	
</body>
</html>