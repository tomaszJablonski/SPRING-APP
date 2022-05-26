package com.app.springapp.controller;

import com.app.springapp.model.Person;
import com.app.springapp.model.Task;
import com.app.springapp.service.PersonService;
import com.app.springapp.service.TaskService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.List;

@Controller
@AllArgsConstructor
public class TasksController {

    private final TaskService taskService;
    private final PersonService personService;


    @GetMapping("/tasks")
    public String getTasks(Model model) {
        List<Task> taskList = taskService.getAllTasks();
        model.addAttribute("task", taskList);
        return "tasks/tasks";

    }

    @GetMapping("/addTask")
    public String getAddTask(Model model) {
        List<Person> personList = personService.getALLPersons();
        model.addAttribute("person", personList);
        return "tasks/addTask";
    }

    @PostMapping("/addTask")
    public RedirectView postAddTask(Task task) {
        taskService.addTask(task);
        return new RedirectView("/tasks");
    }

    @GetMapping("/editTask/{id}")
    public String getEditTaks(@PathVariable Long id, Model model) {
        Task task = taskService.getTaskById(id);
        model.addAttribute("task", task);
        return "tasks/editTask";
    }

    @PostMapping("/editTask/{id}")
    public RedirectView postEditTaks(@Valid Task task, @PathVariable Long id) {
        taskService.editTask(task);
        return new RedirectView("/tasks");
    }


}
