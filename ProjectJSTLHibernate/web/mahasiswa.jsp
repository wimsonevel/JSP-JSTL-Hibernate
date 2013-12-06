<%-- 
    Document   : mahasiswa
    Created on : 23 Nov 13, 5:21:40
    Author     : Wim Sonevel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h3>Form Input Data Mahasiswa</h3>
<form action='aksiMahasiswa.jsp' method='POST' >
    <table cellpadding='2' cellpadding='2'>
        <tr>
            <td width='160'><label>NIM</label></td>
            <td>:</td>
            <td><input type='text' name='nim' placeholder='Nim' required="" /></td>
        </tr>
        <tr>
            <td><label>Nama</label></td>
            <td>:</td>
            <td><input type='text' name='nama' placeholder='Nama' required="" /></td>
        </tr>
        <tr>
            <td><label>Alamat</label></td>
            <td>:</td>
            <td><input type='text' name='alamat' placeholder='Alamat' required="" /></td>
        </tr>
        <tr>
            <td><label>Jenis Kelamin</label></td>
            <td>:</td>
            <td><input type='radio' name='jeniskelamin' value='L'/><label>Laki-Laki</label>
                <input type='radio' name='jeniskelamin' value='P'/><label>Perempuan</label></td>
        </tr>
        <tr>
            <td><label>Jurusan</label></td>
            <td>:</td>
            <td><select name='jurusan' required="">
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
            <td><input type='text' name='telp' placeholder='Telp' required="" /></td>
        </tr>
        <tr>
            <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>
                <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
        </tr>
        <input type="hidden" name="status" value="Simpan" />
    </table>
</form>
