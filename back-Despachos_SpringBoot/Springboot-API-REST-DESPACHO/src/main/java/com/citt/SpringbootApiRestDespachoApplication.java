package com.citt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringbootApiRestDespachoApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootApiRestDespachoApplication.class, args);
		// este comentario es solo para comprobar el funcionamiento del pipeline de CI/CD, aunque no se ha modificado nada en este proyecto, solo se ha modificado el pipeline para que se ejecute al detectar cambios en este proyecto
	}
}
