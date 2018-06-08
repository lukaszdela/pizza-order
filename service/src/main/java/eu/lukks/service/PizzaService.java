package eu.lukks.service;

import eu.lukks.model.Pizza;
import eu.lukks.repository.IPizzaRepository;
import eu.lukks.repository.PizzaRepository;

import java.util.List;

public class PizzaService implements IPizzaService{

    private IPizzaRepository pizzaRepository;

    public PizzaService() {
        this.pizzaRepository = new PizzaRepository();
    }

    @Override
    public List<Pizza> listAllPizzas(){
        return pizzaRepository.listAllPizzas();
    }

    @Override
    public Pizza findPizzaById(Long id) {
        return pizzaRepository.findPizzaById(id);
    }
}
