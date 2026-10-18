package com.pandapickapp.controller;

import com.pandapickapp.model.WelcomeModel;
import com.pandapickapp.view.WelcomeView;

import javafx.stage.Stage;

public class WelcomeController {
    private WelcomeModel model;
    private WelcomeView view;
    private Stage stage;

    public WelcomeController(WelcomeModel model, WelcomeView view, Stage stage) {
        this.model = model;
        this.view = view;
        this.stage = stage;
        inicializar();
    }

    private void inicializar() {
        // Enlazar datos iniciales
        view.setTitulo(model.getTitulo());
        view.setSubtitulo(model.getSubtitulo());

        // Manejar eventos
        view.getBtnIngresar().setOnAction(e -> onIngresarClicked());
    }

    private void onIngresarClicked() {
        System.out.println("Acción de navegación ejecutada por el controlador.");
        // Aquí coordinarás el cambio hacia la siguiente vista/controlador
    }
}