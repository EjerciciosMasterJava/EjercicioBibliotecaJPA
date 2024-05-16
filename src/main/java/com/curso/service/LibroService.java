package com.curso.service;

import java.util.ArrayList;
import java.util.List;

import com.curso.dominio.Libro;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class LibroService {

	public void printAlumnos(String mensaje, List<Libro> libros) {
		System.out.println(mensaje);
		for (Libro l : libros) {
			System.out.println(l);
		}
	}

	/**
	 * Obtener la lista completa alumnos del instituto
	 * @param em el gestor EntityManager para la gestion de la base de datos
	 * @return la lista de los alumnos
	 */
	public List<Libro> getLibros(EntityManager em){
		TypedQuery<Libro> queryLibro = em.createNamedQuery("buscarTodos", Libro.class);
		List<Libro> libros = queryLibro.getResultList();
		return libros;
	}
	
	/**
	 * Obtener un alumno a partir de su Id
	 * @param em el gestor EntityManager para la gestion de la base de datos
	 * @param isbn el id del alumno
	 * @return el alumno si lo encuentra, null en caso contrario
	 */
	public Libro getLibroPorId(EntityManager em, String isbn){
		Libro libro = null;
		if(em != null) {
			if(!isbn.isEmpty()) {
				try {
					TypedQuery<Libro> queryAlumno = em.createNamedQuery("buscarPorIsbn", Libro.class);
					queryAlumno.setParameter("isbn", isbn);
					libro = queryAlumno.getSingleResult();
				} catch (Exception e) {
					System.out.println(String.format("Error en la obtencion del libro con isbn %s", isbn));
					e.printStackTrace();
				}
			}else {
				System.out.println("Error. El isbn no puede estar vacio.");
			}
		}else {
			System.out.println("Error. EntityManager no puede ser null.");
		}
		return libro;
	}
	
	/**
	 * Obtener una lista de alumnos cuyo nombre completo contenga la palabra a buscar
	 * @param em  el gestor EntityManager para la gestion de la base de datos
	 * @param nombre el nombre a buscar
	 * @return una lista con los alumnos que coincidan con la busqueda, una lista vacia en caso de que no haya coincidencias
	 */
	public List<Libro> getLibrosPorTitulo(EntityManager em, String titulo){
		List<Libro> alumnos = new ArrayList();
		if(em != null) {
			if(!titulo.isEmpty()) {
			try {
				TypedQuery<Libro> queryAlumno = em.createNamedQuery("buscarPorTitulo", Libro.class);
				queryAlumno.setParameter("titulo", titulo);
				alumnos = queryAlumno.getResultList();
			} catch (Exception e) {
				System.out.println("Error en la consulta en la base de datos.");
				e.printStackTrace();
			}
			}else {
				System.out.println("Error. El nombre no puede estar vacio.");
			}
		}else {
			System.out.println("Error. EntityManager no puede ser null.");
		}

		return alumnos;
	}
	
	/**
	 * Obtener una lista de alumnos por su apellido
	 * @param em el gestor EntityManager para la gestion de la base de datos
	 * @param apellido el apellido a buscar en la base de datos
	 * @return una lista con los alumnos que coincidan con la busqueda, una lista vacia en caso de que no haya coincidencias
	 */
	public List<Libro> getLibrosPorPrecio(EntityManager em, Integer precio){
		List<Libro> alumnos = new ArrayList();
		if(em != null) {
			if(precio != null && precio > 0) {
			try {
				TypedQuery<Libro> queryAlumno = em.createNamedQuery("buscarPorPrecio", Libro.class);
				queryAlumno.setParameter("precio", precio);
				alumnos = queryAlumno.getResultList();
			} catch (Exception e) {
				System.out.println("Error en la consulta en la base de datos.");
				e.printStackTrace();
			}
			}else {
				System.out.println("Error. El apellido no puede estar vacio.");
			}
		}else {
			System.out.println("Error. EntityManager no puede ser null.");
		}
		return alumnos;
	}
}
