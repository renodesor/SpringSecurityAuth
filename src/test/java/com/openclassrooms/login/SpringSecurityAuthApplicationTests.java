package com.openclassrooms.login;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.openclassrooms.login.controller.LoginController;

@SpringBootTest
@ExtendWith(SpringExtension.class)
class SpringSecurityAuthApplicationTests {
	
	@Autowired
	private LoginController controller;

	@Test
	void contextLoads() {
		assertThat(controller).isNotNull();
	}

}
