package com.springdemo.goodreads.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;
import com.springdemo.goodreads.model.Reader;

/**
 * @author Richard Dimalanta
 */
public interface ReaderRepository {

    Reader findById(int id) throws DataAccessException;
    
    void save(Reader reader) throws DataAccessException;
    
    Collection<Reader> findByLastName(String lastName) throws DataAccessException;


}
