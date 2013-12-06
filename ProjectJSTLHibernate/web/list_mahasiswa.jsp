<%-- 
    Document   : list_mahasiswa
    Created on : 23 Nov 13, 6:11:07
    Author     : Wim Sonevel
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel='stylesheet' type='text/css' href='css/tablestyle.css' />
<jsp:useBean id="mhs" class="controller.MahasiswaCRUD" />

<table width='780' border='0' align='center'>
    <tr>
        <td colspan='7'><h3><strong><center>Data Mahasiswa</center></strong></h3></td>
    </tr>
    <tr class='head'>
        <th width='200'>NIM</th>
        <th width='350'>Nama Mahasiswa</th>
        <th width='300'>Alamat</th>
        <th width='230'>Jenis Kelamin</th>
        <th width='300'>Jurusan</th>
        <th width='240'>Telp</th>
        <th width='260'>Aksi</th>
    </tr>

    <c:forEach var="row" items="${mhs.getAll()}">
    <tr class='satu'>
        <td>${row.nim}</td>
        <td>${row.mhsNama}</td>
        <td>${row.mhsAlamat}</td>
        <td>${row.mhsJenisKelamin}</td>
        <td>${row.mhsJurusan}</td>
        <td>${row.mhsTelp}</td>
        <td><a href="aksiMahasiswa.jsp?nim=${row.nim}&status=Delete"><img width='12px' src='css/images/delete.png'/>Hapus</a>
            <a href="?page=update_mhs&nim=${row.nim}"><img width='12px' src='css/images/edit.png'/>Edit</a></td>
    </tr>
    </c:forEach>
</table>
<a href=?page=mahasiswa><h3><center>Tambah Data</center></h3></a>

