package eu.lukks.controller;

import eu.lukks.model.Pizza;
import eu.lukks.service.IPizzaService;
import eu.lukks.service.PizzaService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@javax.servlet.annotation.WebServlet("/PizzaServlet")
public class PizzaServlet extends javax.servlet.http.HttpServlet {

    private IPizzaService pizzaService;

    public PizzaServlet() {
        this.pizzaService = new PizzaService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String pizzaId = request.getParameter("pizzaId");
        response.sendRedirect("/ClientServlet?pizzaId=" + pizzaId);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Pizza> pizzas = pizzaService.listAllPizzas();
        request.setAttribute("pizzas", pizzas);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
