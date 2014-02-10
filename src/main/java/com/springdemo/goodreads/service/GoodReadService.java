package com.springdemo.goodreads.service;

import java.util.Collection;

import org.springframework.dao.DataAccessException;
import com.springdemo.goodreads.model.Book;
import com.springdemo.goodreads.model.Reader;


/**
 * Mostly used as a facade for all Goodread controllers
 *
 * @author Richard Dimalanta
 */
public interface GoodReadService {

    public Collection<Book> findBooks() throws DataAccessException;

    public Reader findReaderById(int id) throws DataAccessException;
    
    public void saveReader(Reader reader) throws DataAccessException;

}
