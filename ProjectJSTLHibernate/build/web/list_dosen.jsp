<%-- 
    Document   : list_dosen
    Created on : 23 Nov 13, 6:30:43
    Author     : Wim Sonevel
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel='stylesheet' type='text/css' href='css/tablestyle.css' />

<jsp:useBean id="dos" class="controller.DosenCRUD" />
<table width='670' border='0' align='center'>
    <tr>
        <td colspan='7'><h3><strong><center>Data Dosen</center></strong></h3></td>
    </tr>
    <tr class='head'>
        <th width='200'>NIP</th>
        <th width='350'>Nama Dosen</th>
        <th width='300'>Alamat</th>
        <th width='240'>Telp</th>
        <th width='260'>Aksi</th>
    </tr>
    
    <c:forEach var="row" items="${dos.getAll()}">
    <tr class='satu'>
        <td>${row.nip}</td>
        <td>${row.dosNama}</td>
        <td>${row.dosAlamat}</td>
        <td>${row.dosTelp}</td>
        <td><a href="aksiDosen.jsp?nip=${row.nip}&status=Delete"><img width='12px' src='css/images/delete.png'/>Hapus</a>
            <a href="?page=update_dos&nip=${row.nip}"><img width='12px' src='css/images/edit.png'/>Edit</a></td>
    </tr>
    </c:forEach>
</table>
<a href=?page=dosen><h3><center>Tambah Data</center></h3></a>

