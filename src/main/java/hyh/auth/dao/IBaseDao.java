package hyh.auth.dao;

import java.util.List;

public interface IBaseDao<T> {
	List<T> getAll();
	void delete(T t);
	void saveOrUpdate(T t);
}
