package tp.kits3.livedinner.DAO;

import java.util.List;

import tp.kits3.livedinner.VO.Category;
import tp.kits3.livedinner.VO.Menu;

public class RestaurantDAO<T extends Object> implements I_Restaurant<T>{

	@Override
	public void add(T t) {
		
		
		if(t instanceof Category) {
			
		}
		
		if(t instanceof Menu) {
			//...
		}
		
	}

	@Override
	public void update(T t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) { 
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> List<T> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T findOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
