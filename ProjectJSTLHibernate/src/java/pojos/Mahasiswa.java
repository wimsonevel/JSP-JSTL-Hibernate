package pojos;
// Generated 22 Nov 13 10:33:44 by Hibernate Tools 3.2.1.GA



/**
 * Mahasiswa generated by hbm2java
 */
public class Mahasiswa  implements java.io.Serializable {


     private int nim;
     private String mhsNama;
     private String mhsAlamat;
     private String mhsJenisKelamin;
     private String mhsJurusan;
     private String mhsTelp;

    public Mahasiswa() {
    }

	
    public Mahasiswa(int nim) {
        this.nim = nim;
    }
    public Mahasiswa(int nim, String mhsNama, String mhsAlamat, String mhsJenisKelamin, String mhsJurusan, String mhsTelp) {
       this.nim = nim;
       this.mhsNama = mhsNama;
       this.mhsAlamat = mhsAlamat;
       this.mhsJenisKelamin = mhsJenisKelamin;
       this.mhsJurusan = mhsJurusan;
       this.mhsTelp = mhsTelp;
    }
   
    public int getNim() {
        return this.nim;
    }
    
    public void setNim(int nim) {
        this.nim = nim;
    }
    public String getMhsNama() {
        return this.mhsNama;
    }
    
    public void setMhsNama(String mhsNama) {
        this.mhsNama = mhsNama;
    }
    public String getMhsAlamat() {
        return this.mhsAlamat;
    }
    
    public void setMhsAlamat(String mhsAlamat) {
        this.mhsAlamat = mhsAlamat;
    }
    public String getMhsJenisKelamin() {
        return this.mhsJenisKelamin;
    }
    
    public void setMhsJenisKelamin(String mhsJenisKelamin) {
        this.mhsJenisKelamin = mhsJenisKelamin;
    }
    public String getMhsJurusan() {
        return this.mhsJurusan;
    }
    
    public void setMhsJurusan(String mhsJurusan) {
        this.mhsJurusan = mhsJurusan;
    }
    public String getMhsTelp() {
        return this.mhsTelp;
    }
    
    public void setMhsTelp(String mhsTelp) {
        this.mhsTelp = mhsTelp;
    }




}

