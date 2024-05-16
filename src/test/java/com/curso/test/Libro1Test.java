package com.curso.test;

import static org.junit.Assert.assertNotNull;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class Libro1Test {

	EntityManagerFactory emf;
	
	@BeforeEach
	void iniciar() {
		emf = Persistence.createEntityManagerFactory("bibliotec3");
	}
	
	@Test
	public void entityManagerFactoryTest() {
		assertNotNull(emf);
	}
	
}
