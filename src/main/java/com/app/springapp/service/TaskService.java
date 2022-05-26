package com.app.springapp.service;

import com.app.springapp.model.Task;
import com.app.springapp.repository.TaskRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor

public class TaskService {

    private final TaskRepository taskRepository;

    public void addTask(Task task) {
        taskRepository.save(task);
        System.out.println("Add Task with id " + task.getId());
    }

    public List<Task> getAllTasks() {
        return taskRepository.findAll();
    }

    public void editTask(Task task) {
        taskRepository.save(task);
    }

    public Task getTaskById(Long id) {
        return taskRepository.findById(id).orElse(null);
    }


}
