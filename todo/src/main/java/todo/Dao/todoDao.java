package todo.Dao;


import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import todo.model.todoModel;

@Component
public class todoDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// create
	@Transactional
	public void createList(todoModel todomodel) {

		this.hibernateTemplate.merge(todomodel); // saveOrUpdate is older so use merge instead

	}

	// get all products
	public List<todoModel> getList() {
		List<todoModel> lists = this.hibernateTemplate.loadAll(todoModel.class);
		return lists;
	}

	// delete the single product
	@Transactional
	public void deleteList(int pid) {
		todoModel p = this.hibernateTemplate.load(todoModel.class, pid);
		this.hibernateTemplate.delete(p);
	}

	// get the single product
	public todoModel getList(int pid) {
		return this.hibernateTemplate.get(todoModel.class, pid);
	}
}