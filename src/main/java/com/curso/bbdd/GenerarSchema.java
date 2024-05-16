package com.curso.bbdd;

import jakarta.persistence.Persistence;

public class GenerarSchema {
	public static void main(String[] args) {
		Persistence.generateSchema("bibliotec3", null);
	}
}
