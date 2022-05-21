package com.app.springapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PersonsController {

    @GetMapping("/persons")
    public String getPersons(){
        return "persons/personList";
    }

    @GetMapping("/addPerson")
    public String getAddPerson(){
        return "persons/addNewPerson";
    }

    @GetMapping("/editPerson")
    public String getEditPerson(){
        return "persons/editPerson";
    }
}
