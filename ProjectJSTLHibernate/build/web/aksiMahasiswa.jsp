<%-- 
    Document   : mahasiswaAksi
    Created on : 23 Nov 13, 6:47:45
    Author     : Wim Sonevel
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="nim" scope="request" value="${param.nim}"/>
<c:set var="nama" scope="request" value="${param.nama}"/>
<c:set var="alamat" scope="request" value="${param.alamat}"/>
<c:set var="jeniskelamin" scope="request" value="${param.jeniskelamin}"/>
<c:set var="jurusan" scope="request" value="${param.jurusan}"/>
<c:set var="telp" scope="request" value="${param.telp}"/>
<c:set var="status" scope="request" value="${param.status}"/>

<jsp:useBean id="mahasiswa" class="pojos.Mahasiswa" scope="request"/>
<jsp:setProperty name="mahasiswa" property="nim" value="${nim}"/>
<jsp:setProperty name="mahasiswa" property="mhsNama" value="${nama}"/>
<jsp:setProperty name="mahasiswa" property="mhsAlamat" value="${alamat}"/>
<jsp:setProperty name="mahasiswa" property="mhsJenisKelamin" value="${jeniskelamin}"/>
<jsp:setProperty name="mahasiswa" property="mhsJurusan" value="${jurusan}"/>
<jsp:setProperty name="mahasiswa" property="mhsTelp" value="${telp}"/>

<jsp:useBean id="mc" class="controller.MahasiswaCRUD" scope="request"/>
<c:choose>
    <c:when test="${status.equals('Simpan')}">
        ${mc.create(mahasiswa)}
    </c:when>
    <c:when test="${status.equals('Update')}">
        ${mc.update(mahasiswa,nim)}
    </c:when>
    <c:when test="${status.equals('Delete')}">
        ${mc.delete(nim)}
    </c:when>
</c:choose>

<c:redirect url="?page=list_mhs" />
