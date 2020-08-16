package tp.kits3.livedinner.DAO;

import java.util.List;

import tp.kits3.livedinner.VO.Menu;

public interface IMenuDAO<T extends Menu> extends I_Restaurant<T>{

	List<Menu> findAllByCategoryID(int categoryID);
}
