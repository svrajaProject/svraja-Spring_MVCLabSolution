/**
 * 
 */
package com.gl.student.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gl.student.entity.Student;
import com.gl.student.service.StudentService;

/**
 * @author svraja
 *
 */
@Repository
public class StudentServiceImpl implements StudentService {

	private Session session;
	private SessionFactory sessionFactory;

	@Autowired
	public StudentServiceImpl(SessionFactory sessionFactory) {

		this.sessionFactory = sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
		}
	}

	@Override
	@Transactional
	public List<Student> fetchAll() {
		Transaction tx = session.beginTransaction();
		List<Student> students = session.createQuery("from Student").list();
		tx.commit();
		return students;
	}

	@Override
	@Transactional
	public Student fetchById(int id) {
		Transaction tx = session.beginTransaction();
		Student student = session.get(Student.class, id);
		tx.commit();
		return student;
	}

	@Override
	@Transactional
	public void add(Student student1) {
		Transaction tx = session.beginTransaction();
		session.save(student1);
		tx.commit();
		return;
	}

	@Override
	@Transactional
	public Student delete(int id) {
		Transaction tx = session.beginTransaction();
		Student student = session.get(Student.class, id);
		session.delete(student);
		tx.commit();
		return student;
	}

}
