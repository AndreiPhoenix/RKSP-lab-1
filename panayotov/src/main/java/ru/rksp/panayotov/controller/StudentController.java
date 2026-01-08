package ru.rksp.panayotov.controller;

import ru.rksp.panayotov.entity.Student;
import ru.rksp.panayotov.repository.StudentRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/students")
@Tag(name = "Students", description = "Управление студентами")
public class StudentController {

    @Autowired
    private StudentRepository studentRepository;

    @GetMapping
    @Operation(summary = "Получить всех студентов")
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    @PostMapping
    @Operation(summary = "Создать нового студента")
    public Student createStudent(@RequestBody Student student) {
        return studentRepository.save(student);
    }

    @GetMapping("/test")
    @Operation(summary = "Тестовый эндпоинт")
    public String test() {
        return "Приложение работает! База данных подключена.";
    }
}