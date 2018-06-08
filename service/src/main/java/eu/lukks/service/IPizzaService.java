package eu.lukks.service;

import eu.lukks.model.Pizza;

import java.util.List;

public interface IPizzaService {
    List<Pizza> listAllPizzas();

    Pizza findPizzaById(Long id);
}
