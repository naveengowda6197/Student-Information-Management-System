package com.example.studentcrud.controller;

import com.example.studentcrud.model.Student;
import com.example.studentcrud.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/student")

public class StudentController {

    @Autowired
    StudentService studentService;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView list(){
        ModelAndView mv = new ModelAndView("student_list");
        List<Student> studentList =studentService.getAllStudents();
        mv.addObject("studentList",studentList);

        return mv;
    }

    @RequestMapping(value = "/addStudent",method = RequestMethod.GET)
    public ModelAndView addStudent(){
        ModelAndView mv = new ModelAndView();
        Student student = new Student();
        mv.addObject("studentForm",student);
        mv.setViewName("new_student");

        return mv;
    }

    @RequestMapping(value = "addStudent", method = RequestMethod.POST)
    public ModelAndView addStudent(@ModelAttribute("studentForm") Student student){
       studentService.addStudent(student);
       return new ModelAndView("redirect:/student/list");
    }

    @RequestMapping(value = "editStudent/{id}", method = RequestMethod.GET)
    public ModelAndView editStudent(@PathVariable("id")int id){
        ModelAndView mv = new ModelAndView();
        Student student = studentService.getStudentById(id);
        mv.addObject("studentForm",student);
        mv.setViewName("update_student");

        return mv;
    }

    @RequestMapping(value = "deleteStudent/{id}",method = RequestMethod.GET)
    public ModelAndView deleteStudent(@PathVariable("id")int id){
        studentService.deleteStudent(id);
        return new ModelAndView("redirect:/student/list");
    }

}
