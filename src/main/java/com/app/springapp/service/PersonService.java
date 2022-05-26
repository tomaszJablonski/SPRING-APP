package com.app.springapp.service;

import com.app.springapp.model.Person;
import com.app.springapp.repository.PersonRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonService {

    private final PersonRepository personRepository;


    public PersonService(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    public void addPerson(Person person) {
        personRepository.save(person);
        System.out.println("Add person with id " + person.getId());
    }

    public List<Person> getALLPersons() {
        return personRepository.findAll();
    }

    public Person getPersonById(Long id) {
        return personRepository.findById(id).orElse(null);
    }

    public void editPerson(Person person) {

        personRepository.save(person);
    }

    public void deletePerson(Long id) {
        personRepository.deleteById(id);
        System.out.println("Delete person with id " + id);
    }
}
