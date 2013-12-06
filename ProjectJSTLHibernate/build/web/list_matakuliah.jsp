<%-- 
    Document   : list_matakuliah
    Created on : 23 Nov 13, 6:31:18
    Author     : Wim Sonevel
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel='stylesheet' type='text/css' href='css/tablestyle.css' />

<jsp:useBean id="mat" class="controller.MatakuliahCRUD" />
<table width='670' border='0' align='center'>
    <tr>
        <td colspan='7'><h3><strong><center>Data Matakuliah</center></strong></h3></td>
    </tr>
    <tr class='head'>
        <th width='200'>Kode</th>
        <th width='350'>Nama Matakuliah</th>
        <th width='300'>SKS</th>
        <th width='240'>Semester</th>
        <th width='260'>Aksi</th>
    </tr>
    
    <c:forEach var="row" items="${mat.getAll()}">
    <tr class='satu'>
        <td>${row.matKode}</td>
        <td>${row.matNama}</td>
        <td>${row.matSks}</td>
        <td>${row.matSemester}</td>
        <td><a href="aksiMatakuliah.jsp?kode=${row.matKode}&status=Delete"><img width='12px' src='css/images/delete.png'/>Hapus</a>
            <a href="?page=update_mat&kode=${row.matKode}"><img width='12px' src='css/images/edit.png'/>Edit</a></td>
    </tr>
    </c:forEach>
</table>
<a href=?page=matakuliah><h3><center>Tambah Data</center></h3></a>
