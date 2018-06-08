package eu.lukks.repository;

import eu.lukks.model.Pizza;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class PizzaRepository implements IPizzaRepository{

    private EntityManagerFactory managerFactory;
    private EntityManager entityManager;

    public PizzaRepository() {
        this.managerFactory = Persistence.createEntityManagerFactory("examplePersistenceUnit");
        this.entityManager = managerFactory.createEntityManager();
    }

    @Override
    public List<Pizza> listAllPizzas() {
        return entityManager.createQuery("select b from Pizza b", Pizza.class).getResultList();
    }

    @Override
    public Pizza findPizzaById(Long id) {
        return entityManager.find(Pizza.class, id);
    }
}
