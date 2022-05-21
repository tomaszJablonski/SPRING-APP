package com.app.springapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TasksController {

    @GetMapping("/tasks")
    public String getTasks(){
        return "tasks/tasks";
    }

    @GetMapping("/addTask")
    public String getAddTask(){
        return "tasks/addTask";
    }
}
