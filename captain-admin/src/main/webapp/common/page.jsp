<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
��ǰҳ:��
<s:property value="#request.pageView.currentPage" />
ҳ | �ܼ�¼��:
<s:property value="#request.pageView.totalRecord" />
�� | ÿҳ��ʾ:
<s:property value="#request.pageView.maxResult" />
�� | ��ҳ��:
<s:property value="#request.pageView.totalPage" />
ҳ |
<s:if test="#request.pageView.currentPage > 1">
	<a href="javascript:topage(1)">��ҳ</a>&nbsp;
	<a href="javascript:topage('<s:property value="#request.pageView.currentPage - 1"/>')">��һҳ</a>&nbsp;
</s:if>
<s:else>
��ҳ &nbsp;��һҳ&nbsp; 
</s:else>
<s:iterator begin="#request.pageView.pageIndex.startIndex" end="#request.pageView.pageIndex.endIndex" var="wp">
	<s:if test="#request.pageView.currentPage== #wp">
	<font color="#FF0000"><s:property value="#wp" /></font>&nbsp;
	</s:if>
	<s:else>
		<a href="javascript:topage('<s:property value="#wp"/>')"><s:property value="#wp" /></a>&nbsp;
	</s:else>
</s:iterator>
<s:if test="#request.pageView.currentPage < #request.pageView.totalPage">
	<a href="javascript:topage('<s:property value="#request.pageView.currentPage + 1"/>')">��һҳ</a>&nbsp;
	<a href="javascript:topage('<s:property value="#request.pageView.totalPage"/>')">ĩҳ</a>&nbsp;
</s:if>
<s:else>
��һҳ &nbsp;ĩҳ&nbsp; 
</s:else>


