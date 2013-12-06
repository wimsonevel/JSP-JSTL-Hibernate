<%-- 
    Document   : aksiMatakuliah
    Created on : 23 Nov 13, 16:30:07
    Author     : Wim Sonevel
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="kode" scope="request" value="${param.kode}"/>
<c:set var="matakuliah" scope="request" value="${param.matakuliah}"/>
<c:set var="sks" scope="request" value="${param.sks}"/>
<c:set var="semester" scope="request" value="${param.semester}"/>
<c:set var="status" scope="request" value="${param.status}"/>

<jsp:useBean id="matkul" scope="request" class="pojos.Matakuliah" />
<jsp:setProperty name="matkul" property="matKode" value="${kode}"/>
<jsp:setProperty name="matkul" property="matNama" value="${matakuliah}"/>
<jsp:setProperty name="matkul" property="matSks" value="${sks}"/>
<jsp:setProperty name="matkul" property="matSemester" value="${semester}"/>

<jsp:useBean id="mtc" scope="request" class="controller.MatakuliahCRUD" />
<c:choose>
    <c:when test="${status.equals('Simpan')}">
        ${mtc.create(matkul)}
    </c:when>
    <c:when test="${status.equals('Update')}">
        ${mtc.update(matkul, kode)}
    </c:when>
    <c:when test="${status.equals('Delete')}">
        ${mtc.delete(kode)}
    </c:when>
</c:choose>

<c:redirect url="?page=list_mat" />