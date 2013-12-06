<%-- 
    Document   : aksiDosen
    Created on : 23 Nov 13, 15:52:30
    Author     : Wim Sonevel
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="nip" scope="request" value="${param.nip}" />
<c:set var="nama" scope="request" value="${param.nama}" />
<c:set var="alamat" scope="request" value="${param.alamat}" />
<c:set var="telp" scope="request" value="${param.telp}" />
<c:set var="status" scope="request" value="${param.status}" />

<jsp:useBean id="dosen" scope="request" class="pojos.Dosen" />
<jsp:setProperty name="dosen" property="nip" value="${nip}" />
<jsp:setProperty name="dosen" property="dosNama" value="${nama}" />
<jsp:setProperty name="dosen" property="dosAlamat" value="${alamat}" />
<jsp:setProperty name="dosen" property="dosTelp" value="${telp}" />

<jsp:useBean id="dosControl" scope="request" class="controller.DosenCRUD" />
<c:choose>
    <c:when test="${status.equals('Simpan')}">
        ${dosControl.create(dosen)}
    </c:when>
    <c:when test="${status.equals('Update')}">
        ${dosControl.update(dosen, nip)}
    </c:when>
    <c:when test="${status.equals('Delete')}">
        ${dosControl.delete(nip)}
    </c:when>
</c:choose>

<c:redirect url="?page=list_dos"/>