package eu.lukks.repository;

import eu.lukks.model.Pizza;

import java.util.List;

public interface IPizzaRepository {
    List<Pizza> listAllPizzas();

    Pizza findPizzaById(Long id);
}
