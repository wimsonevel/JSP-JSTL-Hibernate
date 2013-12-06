<%-- 
    Document   : matakuliah
    Created on : 23 Nov 13, 5:58:44
    Author     : Wim Sonevel
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h3>Form Input Data Matakuliah</h3>
<form action='aksiMatakuliah.jsp' method='POST'>
    <table cellpadding='2' cellpadding='2'>
        <tr>
            <td width='160'><label>Kode Matakuliah</label></td>
            <td>:</td>
            <td><input type='text' name='kode' placeholder='Kode Matakuliah' required=""/></td>
        </tr>
        <tr>
            <td><label>Nama Matakuliah</label></td>
            <td>:</td>
            <td><input type='text' name='matakuliah' placeholder='Nama Matakuliah' required=""/></td>
        </tr>
        <tr>
            <td><label>SKS</label></td>
            <td>:</td>
            <td><select name='sks' required="">
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
                    <c:forEach var="number" begin="1" end="8">
                        <option value="${number}">${number}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>
                <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
        </tr>
        <input type="hidden" name="status" value="Simpan" />
    </table>
</form>

