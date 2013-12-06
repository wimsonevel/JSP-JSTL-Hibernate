<%-- 
    Document   : updateMahasiswa
    Created on : 23 Nov 13, 17:05:50
    Author     : Wim Sonevel
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:set var="nim" scope="request" value="${param.nim}"/>
<jsp:useBean id="mc" class="controller.MahasiswaCRUD" scope="request"/>

<c:forEach var="row" items="${mc.findByNim(nim)}">
<h3>Form Input Data Mahasiswa</h3>
<form action='aksiMahasiswa.jsp' method='POST' >
    <table cellpadding='2' cellpadding='2'>
        <tr>
            <td width='160'><label>NIM</label></td>
            <td>:</td>
            <td><input type='text' name='nim' placeholder='Nim' value="${row.nim}" readonly="true"/></td>
        </tr>
        <tr>
            <td><label>Nama</label></td>
            <td>:</td>
            <td><input type='text' name='nama' placeholder='Nama' required="" value="${row.mhsNama}"/></td>
        </tr>
        <tr>
            <td><label>Alamat</label></td>
            <td>:</td>
            <td><input type='text' name='alamat' placeholder='Alamat' required="" value="${row.mhsAlamat}"/></td>
        </tr>
        <tr>
            <td><label>Jenis Kelamin</label></td>
            <td>:</td>
            <c:set var="jekel" scope="request" value="${row.mhsJenisKelamin}"/>
            <td><input type='radio' name='jeniskelamin' value='L' <c:if test="${jekel.equals('L')}">checked="checked"</c:if>/><label>Laki-Laki</label>
                <input type='radio' name='jeniskelamin' value='P' <c:if test="${jekel.equals('P')}">checked="checked"</c:if>/><label>Perempuan</label></td>
        </tr>
        <tr>
            <td><label>Jurusan</label></td>
            <td>:</td>
            <td><select name='jurusan' required="">
                    <option value="${row.mhsJurusan}">${row.mhsJurusan}</option>
                    <option>Pilih Jurusan</option>
                    <option value='Matematika'>Matematika</option>
                    <option
                        value='Fisika'>Fisika</option>
                    <option value='Biologi'>Biologi</option>
                    <option value='Kimia'>Kimia</option>
                    <option value='Teknik Informatika'>Teknik Informatika</option>
                    <option value='Teknik Arsitektur'>Teknik Arsitektur</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><label>Telp</label></td>
            <td>:</td>
            <td><input type='text' name='telp' placeholder='Telp' required="" value="${row.mhsTelp}"/></td>
        </tr>
        <tr>
            <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Update'/>
                <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
        </tr>
        <input type="hidden" name="status" value="Update" />
    </table>
</form>
</c:forEach>