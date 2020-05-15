package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Tblconsulta;



public class ConsultaDao {
	
public List<Tblconsulta> ConsultaLista() {
		
		List<Tblconsulta> Listacon = new ArrayList<>();
		
		
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("parcial-alexis");
		em = emf.createEntityManager();
		
		try {
			
			em.getTransaction().begin();
	
			Listacon = em.createQuery("from Tblconsulta").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);					
		}		
		return Listacon;
	}

public void eliminarDatos(Tblconsulta o) {
	EntityManager em;
	EntityManagerFactory emf;
	emf = Persistence.createEntityManagerFactory("parcial-alexis");
	em = emf.createEntityManager();

	em.getTransaction().begin();		
	o=em.getReference(Tblconsulta.class, o.getIdConsulta());
	em.remove(o);
	em.flush();
	em.getTransaction().commit();
}

public void actualizarDatos(Tblconsulta consulta) {
	EntityManager em;
	EntityManagerFactory emf;
	emf = Persistence.createEntityManagerFactory("parcial-alexis");
	em = emf.createEntityManager();
	
	consulta.getIdConsulta();
	consulta.getNombre();
	consulta.getApellido();

	
	em.getTransaction().begin();
	em.merge(consulta);
	em.flush();
	em.getTransaction().commit();
	
	
}
}
