package com.springdemo.goodreads.repository.jpa;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import com.springdemo.goodreads.model.Reader;
import com.springdemo.goodreads.repository.ReaderRepository;

/**
 * JPA implementation of the {@link ReaderRepository} interface.
 *
 * @author Richard Dimalanta
 */
@Repository
public class JpaReaderRepositoryImpl implements ReaderRepository {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Reader findById(int id) {
        Query query = this.em.createQuery("SELECT reader FROM Reader reader WHERE reader.id =:id");
        query.setParameter("id", id);
        return (Reader) query.getSingleResult();
    }


    @Override
    public void save(Reader reader) {
    	if (reader.getId() == null) {
    		this.em.persist(reader);     		
    	}
    	else {
    		this.em.merge(reader);    
    	}

    }

	@SuppressWarnings("unchecked")
	@Override
	public Collection<Reader> findByLastName(String lastName) throws DataAccessException {
		  Query query = this.em.createQuery("SELECT DISTINCT reader FROM Reader reader WHERE reader.lastName LIKE :lastName");
	      query.setParameter("lastName", lastName + "%");
	      return query.getResultList();
	}

}
