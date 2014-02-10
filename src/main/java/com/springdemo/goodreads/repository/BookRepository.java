package com.springdemo.goodreads.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.springdemo.goodreads.model.Book;

/**
 * Repository class for <code>Book</code> domain objects All method names are compliant with Spring Data naming
 * conventions so this interface can easily be extended for Spring Data See here: http://static.springsource.org/spring-data/jpa/docs/current/reference/html/jpa.repositories.html#jpa.query-methods.query-creation
 *
 * @author richard dimalanta
 */
public interface BookRepository {

    /**
     * Retrieve all <code>Book</code>s from the data store.
     * @return a <code>Collection</code> of <code>Book</code>s
     */
    Collection<Book> findAll() throws DataAccessException;


}
