<%@ include file="/WEB-INF/jsp/include/imports.jsp" %>

<%--@elvariable id="document" type="java.lang.Object"--%>
<c:if test="${requestScope.document ne null}">
  <div>Document Present</div>
</c:if>
<%--@elvariable id="editMode" type="java.lang.Boolean"--%>
<c:if test="${requestScope.editMode && (requestScope.document eq null)}">
  <div>Edit Mode</div>
</c:if>
<c:if test="${(!requestScope.editMode) && (requestScope.document eq null)}">
  <div>Other</div>
</c:if>
