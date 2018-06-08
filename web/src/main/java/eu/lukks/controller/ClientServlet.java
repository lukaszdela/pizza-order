package eu.lukks.controller;

import eu.lukks.model.Pizza;
import eu.lukks.service.IPizzaService;
import eu.lukks.service.PizzaService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ClientServlet")
public class ClientServlet extends HttpServlet {
    private IPizzaService pizzaService;

    public ClientServlet() {
        this.pizzaService = new PizzaService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long pizzaId = Long.valueOf(request.getParameter("pizzaId"));

        Pizza pizza = pizzaService.findPizzaById(pizzaId);

        System.out.println(pizza);

        request.setAttribute("pizza", pizza);

        request.getRequestDispatcher("clientForm.jsp").forward(request, response);
    }
}
