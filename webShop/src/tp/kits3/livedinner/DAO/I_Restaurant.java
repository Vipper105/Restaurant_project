package tp.kits3.livedinner.DAO;

import java.util.List;

public interface I_Restaurant<T extends Object> {

	// add
	void add(T t);

	// update/edit
	void update(T t); 

	// delete/remove
	void delete(int id);

	// read/show/find all
	public List<T> findAll();

	// find one
	T findOne(int id);

}
