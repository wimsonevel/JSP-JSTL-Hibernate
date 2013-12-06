<%-- 
    Document   : dosen
    Created on : 23 Nov 13, 5:58:08
    Author     : Wim Sonevel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<h3>Form Input Data Dosen</h3>
<form action='aksiDosen.jsp' method='POST'>
    <table cellpadding='2' cellpadding='2'>
        <tr>
            <td width='160'><label>NIP</label></td>
            <td>:</td>
            <td><input type='text' name='nip' placeholder='Nip' required=""/></td>
        </tr>
        <tr>
            <td><label>Nama Dosen</label></td>
            <td>:</td>
            <td><input type='text' name='nama' placeholder='Nama Dosen' required=""/></td>
        </tr>
        <tr>
            <td><label>Alamat</label></td>
            <td>:</td>
            <td><input type='text' name='alamat' placeholder='Alamat' required=""/></td>
        </tr>
        <tr>
            <td><label>Telp</label></td>
            <td>:</td>
            <td><input type='text' name='telp' placeholder='Telp' required=""/></td>
        </tr>
        <tr>
            <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>
            <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
        </tr>
        <input type="hidden" name="status" value="Simpan" />
    </table>
</form>

