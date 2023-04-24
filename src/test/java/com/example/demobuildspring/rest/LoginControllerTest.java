package com.example.demobuildspring.rest;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class LoginControllerTest {
    @Test
    public void testCallApi() {
        LoginController app1 = new LoginController();
        String stringin = app1.testCallApi("hihi");
        assertEquals("You have been write : hihi",stringin);
    }
}
