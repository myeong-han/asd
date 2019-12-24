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
				<div class="crop-gall">
					<img src="/resources/upload/${addition.mpic }" id="bigimg" class="img-rounded">
				</div>
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
				<c:set var="loop_flag" value="false" />
				<c:forEach var="pic" items="${picList }" varStatus="status">
					<c:if test="${not loop_flag }">
						<td class="text-center" id="pictd">
							<div style="z-index: 0;">
							<img src="/resources/upload/${pic}"	class="img-thumbnail"
							 id="${status.index }" data-num="${status.index }" data-pic="${pic}" style="z-index: -1;">
							<a href="javascript:delSelectedFile()" style="margin-top: 20px;text-decoration: none; color: #DDDDDD; z-index: 1;">
			               	X</a>
			               	</div>
						</td>
				        <c:if test="${status.index eq 5}">
				            <c:set var="loop_flag" value="true" />
				        </c:if>
				    </c:if>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<td><img src="/resources/images/noimage.gif" class="img-thumbnail"></td>
			</c:otherwise>
			</c:choose>	
		</tr>
		
		<tr><td colspan="${fn:length(picList)}" class="text-center">
			<input type="hidden" value="${email}" name="email">
			<input type="hidden" value="" id="mpic" name="mpic">
			<button type="submit" class="btn btn-success btn-lg">메인 사진 변경</button>
		</td></tr>
		</table>

	
</form>
</div>