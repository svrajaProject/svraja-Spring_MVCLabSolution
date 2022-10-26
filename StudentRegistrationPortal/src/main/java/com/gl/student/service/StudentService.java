/**
 * 
 */
package com.gl.student.service;

import java.util.List;

import com.gl.student.entity.Student;

/**
 * @author svraja
 *
 */
public interface StudentService {

	public List<Student> fetchAll();

	public Student fetchById(int id);

	public void add(Student student);

	public Student delete(int id);

}
