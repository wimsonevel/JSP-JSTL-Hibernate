<%-- 
    Document   : updateMatakuliah
    Created on : 24 Nov 13, 13:36:20
    Author     : Wim Sonevel
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:set var="kode" scope="request" value="${param.kode}"/>
<jsp:useBean id="mtc" scope="request" class="controller.MatakuliahCRUD" />

<c:forEach var="row" items="${mtc.findByKode(kode)}">
<h3>Form Input Data Matakuliah</h3>
<form action='aksiMatakuliah.jsp' method='POST'>
    <table cellpadding='2' cellpadding='2'>
        <tr>
            <td width='160'><label>Kode Matakuliah</label></td>
            <td>:</td>
            <td><input type='text' name='kode' placeholder='Kode Matakuliah' required="" readonly="true" value="${row.matKode}"/></td>
        </tr>
        <tr>
            <td><label>Nama Matakuliah</label></td>
            <td>:</td>
            <td><input type='text' name='matakuliah' placeholder='Nama Matakuliah' required="" value="${row.matNama}"/></td>
        </tr>
        <tr>
            <td><label>SKS</label></td>
            <td>:</td>
            <td><select name='sks' required="">
                    <option value="${row.matSks}">${row.matSks}</option>
                    <option>Pilih SKS</option>
                    <c:forEach var="number" begin="1" end="6">
                        <option value="${number}">${number}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td><label>Semester</label></td>
            <td>:</td>
            <td><select name='semester' required="">
                    <option value="${row.matSemester}">${row.matSemester}</option>
                    <option>Pilih Semester</option>
                    <c:forEach var="number" begin="1" end="8">
                        <option value="${number}">${number}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Update'/>
                <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
        </tr>
        <input type="hidden" name="status" value="Update" />
    </table>
</form>
</c:forEach>