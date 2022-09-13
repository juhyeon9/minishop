<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<!--CSS Local LINK:START-->
<link rel="stylesheet" type="text/css" href="/minishop/resources/custom/css/userboard.css">
	<!--CSS Local LINK:END-->
	
<div class="col-lg-8">

	<div class="form-row" id="titleDiv">
	 	<div class="col">
	 			<h3>후기 게시판</h3>		
		</div>
	</div>
	
	<input type="hidden" id="pg" value="${pg}">
	<input type="hidden" id="userName" value="${memberDTO.name}"/>	
	
	<div class="form-row align-items-center">
		<table id="reviewTable" class="table">
			<thead class="thead-dark">
			    <tr>
					<th scope="col">#</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">상품번호</th>	
					<th scope="col">상품이미지</th>						
					<th scope="col">조회수</th>										
					<th scope="col">작성일</th>			
				</tr>
			</thead>  
			<tbody>
				<tr>
					<th scope="row"></th>
					<td colspan="6"></td>		   		
			   	</tr>
			</tbody> 	  
		</table>
	</div>		
	
	<div class="form-row align-items-center subContent">
		<div class="col">
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center" id="boardPagingDiv"></ul>			
			</nav>
		</div>								
	</div>			
		
	<form id="reviewSearch">
		<div class="form-row justify-content-center">
			<input type="hidden" name="pg" value="1">	
			<div class="col-sm-2">
				<select name="searchOption" id="searchOption" class="form-control">
					<option value="name">작성자</option>
					<option value="user_id">아이디</option>
			        <option value="qa_subject">제목</option>
			    </select>			
			</div>
			<div class="col-sm-4">
		    	<input type="text"  class="form-control" name="keyword" id="keyword" value="${keyword}">			
			</div>
			<div class="col-2">
		    	<input type="button" id="reviewSearchBtn" class="form-control btn btn-outline-dark" value="검색">
			</div>
			<div class="col-2">
			    <input type="button" id="goReviewWrite" class="form-control btn btn-outline-dark" value="글쓰기">		
			</div> 
		</div>
  	</form>
		
</div>


	<!--JavaScript Local LINK:START-->	 	
<script type="text/javascript"  src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/minishop/resources/custom/js/review/board.review.js"></script>
<script type="text/javascript" src="/minishop/resources/custom/js/review/reviewList.js"></script>
	<!--JavaScript Local LINK:END-->
