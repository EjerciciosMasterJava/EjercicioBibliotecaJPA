package com.curso.principales;

import java.util.List;
import java.util.Random;

import com.curso.dominio.Categoria;
import com.curso.dominio.Libro;
import com.curso.service.LibroService;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;

public class ConsultasLibro {
	public static void main(String[] args) {
		
		// Crear la unidad de persistencia
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("biblioteca");
		EntityManager em = emf.createEntityManager();
		
		// Insertar libro de prueba
		//insertLibroPrueba(em);
		//insertLibroPruebaCreandoCategoria(em);
		
		System.out.println("Categorias con libros count < 3");
		categoriasConLibrosMenorTres(em);
		
		// Instanciar el servicio para la gestion de libros
		LibroService service = new LibroService();
		
		// Mostrar todos los libros
		service.printAlumnos("Todos los libros:", service.getLibros(em));
		
		
		// Mostrar el libro cuyo id = 1
		System.out.println("Libro con id '978-84-943356-7-8':");
		System.out.println(service.getLibroPorId(em, "978-84-943356-7-8"));
		
		
		// Mostrar los libros con titulo = Vida
		service.printAlumnos("Libros con titulo Vida:", service.getLibrosPorTitulo(em, "Vida"));
		
		
		// Mostrar los libros con precio 24
		service.printAlumnos("Libros con precio 24:", service.getLibrosPorPrecio(em, 24));
	
		
		
	}
	
	public static void categoriasConLibrosMenorTres(EntityManager em) {
		TypedQuery<Categoria> consulta = em.createQuery("SELECT c FROM Categoria c WHERE SIZE(c.libros)<3", Categoria.class);
		List<Categoria> categorias = consulta.getResultList();
		for (Categoria categoria : categorias) {
			System.out.println(categoria);
		}
	}
	
	public static void insertLibroPrueba(EntityManager em) {
		em.getTransaction().begin();
		Categoria categoria = em.find(Categoria.class, "Aventuras");
		Libro libro = new Libro("B01", "TITULO 1", "JAIMITO", 65);
		libro.setCategoria(categoria);
		em.persist(libro);
		em.getTransaction().commit();
	}
	
	public static void insertLibroPruebaCreandoCategoria(EntityManager em) {
		em.getTransaction().begin();
		Categoria categoria = new Categoria("Categoria prueba", "descripcion categoria prueba");
		Libro libro = new Libro("B02", "TITULO 2", "JAIMITO", 65);
		libro.setCategoria(categoria);
		em.persist(categoria);
		em.persist(libro);
		em.getTransaction().commit();
	}

	
}
