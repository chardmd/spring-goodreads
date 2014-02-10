package com.springdemo.goodreads.repository;

import org.springframework.dao.DataAccessException;

import com.springdemo.goodreads.model.BaseEntity;
import com.springdemo.goodreads.model.Reader;

/**
 * Repository class for <code>Reader</code> domain objects All method names are compliant with Spring Data naming
 * conventions so this interface can easily be extended for Spring Data See here: http://static.springsource.org/spring-data/jpa/docs/current/reference/html/jpa.repositories.html#jpa.query-methods.query-creation
 *
 * @author Richard Dimalanta
 */
public interface ReaderRepository {

    /**
     * Retrieve an <code>Reader</code> from the data store by id.
     *
     * @param id the id to search for
     * @return the <code>Reader</code> if found
     * @throws org.springframework.dao.DataRetrievalFailureException
     *          if not found
     */
    Reader findById(int id) throws DataAccessException;


    /**
     * Save a <code>Reader</code> to the data store, either inserting or updating it.
     *
     * @param owner the <code>Reader</code> to save
     * @see BaseEntity#isNew
     */
    void save(Reader reader) throws DataAccessException;


}
