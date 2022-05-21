package com.app.springapp.controller;

import com.app.springapp.model.Person;
import com.app.springapp.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class PersonsController {

    private final PersonService personService;

    public PersonsController(PersonService personService) {
        this.personService = personService;

    }

    //wraca dane na stronę, że je widać ->  Model model
    @GetMapping("/persons")
    public String getPersons(Model model) {
        List<Person> personList = personService.getALLPersons();
        model.addAttribute("person", personList);
        return "persons/personList";
    }

    @GetMapping("/addPerson")
    public String getAddPerson() {
        return "persons/addNewPerson";
    }

    //zapisuje do bazy danych
    @PostMapping("/addPerson")
    public RedirectView postAddPerson(Person person) {
        personService.addPerson(person);
        return new RedirectView("/persons");
    }

    @GetMapping("/editPerson")
    public String getEditPerson() {
        return "persons/editPerson";
    }
}
