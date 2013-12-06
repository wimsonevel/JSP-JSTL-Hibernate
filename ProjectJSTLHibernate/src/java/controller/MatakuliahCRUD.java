/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojos.Matakuliah;

/**
 *
 * @author Wim Sonevel
 */
public class MatakuliahCRUD {
    
    Session session;
    
    public void create(Matakuliah matakuliah){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            session.save(matakuliah);
            transaksi.commit();
        }catch(Exception e){
            e.getMessage();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    
    public List<Matakuliah> getAll(){
        session = util.HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Matakuliah> MatakuliahList = null;
        try {
            Query query = session.createQuery("from Matakuliah");
            MatakuliahList = query.list();

	}catch(Exception e){
            e.getMessage();
	}finally{
            if (session != null) {
                session.close();
            }
        }
	return MatakuliahList;
    }
    
    public void delete(String matKode){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            pojos.Matakuliah mat = (pojos.Matakuliah) session.load(Matakuliah.class, matKode);
            if(mat != null){
                session.delete(mat);
                transaksi.commit();
            }
        }catch(Exception e){
            e.getMessage();
        } finally {
            if (session != null) {
		session.close();
            }
	}
    }
    
    public void update(Matakuliah matakuliah, String kode){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            Matakuliah mat = (Matakuliah) session.load(Matakuliah.class, kode);
            mat.setMatNama(matakuliah.getMatNama());
            mat.setMatSks(matakuliah.getMatSks());
            mat.setMatSemester(matakuliah.getMatSemester());
            transaksi.commit();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    
    public List<Matakuliah> findByKode(String kode) {
	session = util.HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Matakuliah> MatakuliahList = null;
        try {
            Query query = session.createQuery("from Matakuliah where matKode='"+kode+"'");
            MatakuliahList = query.list();

	}catch(Exception e){
            e.getMessage();
	}finally{
            if (session != null) {
                session.close();
            }
        }
	return MatakuliahList;
    }
}
