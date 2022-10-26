/**
 * 
 */
package com.gl.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.student.entity.Student;
import com.gl.student.service.StudentService;

/**
 * @author svraja
 *
 */
@Controller
@RequestMapping("/student")
public class RegistrationController {

	@Autowired
	StudentService studentService;

	@RequestMapping("/reg-form")
	public String regForm(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		return "reg-form";
	}

	@RequestMapping("/update-form")
	public String update(@RequestParam("studentId") int theId, Model model) {
		Student student = studentService.fetchById(theId);
		model.addAttribute("student", student);
		return "reg-form";
	}

	@PostMapping("/save")
	public String save(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("department") String department, @RequestParam("country") String country) {
		System.out.println(id);
		Student student;
		if (id != 0) {
			System.out.println(id);
			student = studentService.fetchById(id);
			student.setName(name);
			student.setDepartment(department);
			student.setCountry(country);
		} else
			student = new Student(name, department, country);
		studentService.add(student);
		return "redirect:/student/show";

	}

	@RequestMapping("/show")
	public String list(Model model) {
		List<Student> students = studentService.fetchAll();
		model.addAttribute("students", students);
		return "home";
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam("studentId") int id) {
		studentService.delete(id);
		return "redirect:/student/show";
	}
}
