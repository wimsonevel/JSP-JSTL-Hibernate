<%-- 
    Document   : updateDosen
    Created on : 24 Nov 13, 13:16:30
    Author     : Wim Sonevel
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:set var="nip" scope="request" value="${param.nip}"/>
<jsp:useBean id="dosControl" scope="request" class="controller.DosenCRUD" />

<c:forEach var="row" items="${dosControl.findByNip(nip)}">
<h3>Form Input Data Dosen</h3>
<form action='aksiDosen.jsp' method='POST'>
    <table cellpadding='2' cellpadding='2'>
        <tr>
            <td width='160'><label>NIP</label></td>
            <td>:</td>
            <td><input type='text' name='nip' placeholder='Nip' required="" value="${row.nip}" readonly="true"/></td>
        </tr>
        <tr>
            <td><label>Nama Dosen</label></td>
            <td>:</td>
            <td><input type='text' name='nama' placeholder='Nama Dosen' required="" value="${row.dosNama}"/></td>
        </tr>
        <tr>
            <td><label>Alamat</label></td>
            <td>:</td>
            <td><input type='text' name='alamat' placeholder='Alamat' required="" value="${row.dosAlamat}"/></td>
        </tr>
        <tr>
            <td><label>Telp</label></td>
            <td>:</td>
            <td><input type='text' name='telp' placeholder='Telp' required="" value="${row.dosTelp}"/></td>
        </tr>
        <tr>
            <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Update'/>
            <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
        </tr>
        <input type="hidden" name="status" value="Update" />
    </table>
</form>
</c:forEach>        
