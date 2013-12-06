<%-- 
    Document   : modul
    Created on : 22 Nov 13, 10:40:43
    Author     : Wim Sonevel
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="halaman" scope="page" value="${param.page}"/>
<c:choose>
    <c:when test="${halaman == null}">
        <jsp:include page="home.jsp"/>
    </c:when>
    <c:when test="${halaman.equals('mahasiswa')}">
        <jsp:include page="mahasiswa.jsp"/>
    </c:when>
    <c:when test="${halaman.equals('dosen')}">
        <jsp:include page="dosen.jsp"/>
    </c:when>
    <c:when test="${halaman.equals('matakuliah')}">
        <jsp:include page="matakuliah.jsp"/>
    </c:when>
    <c:when test="${halaman.equals('list_mhs')}">
        <jsp:include page="list_mahasiswa.jsp"/>
    </c:when>
    <c:when test="${halaman.equals('list_dos')}">
        <jsp:include page="list_dosen.jsp"/>
    </c:when>
    <c:when test="${halaman.equals('list_mat')}">
        <jsp:include page="list_matakuliah.jsp"/>
    </c:when>
    <c:when test="${halaman.equals('update_mhs')}">
        <jsp:include page="updateMahasiswa.jsp"/>
    </c:when>
    <c:when test="${halaman.equals('update_dos')}">
        <jsp:include page="updateDosen.jsp"/>
    </c:when>
    <c:when test="${halaman.equals('update_mat')}">
        <jsp:include page="updateMatakuliah.jsp"/>
    </c:when>
    <c:otherwise>
        <jsp:include page="home.jsp"/>
    </c:otherwise>

</c:choose>
