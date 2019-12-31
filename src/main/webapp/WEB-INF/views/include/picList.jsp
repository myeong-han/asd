<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div>
<form action="/member/changeAddPic" method="post" name="cfrm" onsubmit="return picCheck();">	

	<table class="table">
		<tr>
			<c:choose>
			<c:when test="${not empty addition.mpic }">
				<td colspan="${fn:length(picList)}" class="text-center" id="bigimgtd">
					<img src="/resources/upload/${addition.mpic }" id="bigimg" class="img-rounded" style="max-width:500px;">
				</td>
			</c:when>
			<c:otherwise>
				<td><img src="/resources/images/noimage.gif" class="img-rounded"></td>
			</c:otherwise>
			</c:choose>
		</tr>
		
		<tr>
			<c:choose>
			<c:when test="${not empty picList }">
				<c:forEach var="pic" items="${picList }" varStatus="status">
					<td class="text-center" id="pictd">
					<img src="/resources/upload/${pic}" 
						class="img-thumbnail" id="${status.index }" data-num="${status.index }" data-pic="${pic}"></td>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<td><img src="/resources/images/noimage.gif" class="img-thumbnail"></td>
			</c:otherwise>
			</c:choose>	
		</tr>
		
		<tr><td colspan="${fn:length(picList)}" class="text-center" id="fixtd">
			<input type="hidden" value="${email}" name="email">
			<input type="hidden" value="" id="mpic" name="mpic">
			<button type="submit" class="btn btn-success btn-lg onebtn">메인 사진 변경</button>
		</td></tr>
		</table>

	
</form>
</div>