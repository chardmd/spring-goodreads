package com.springdemo.goodreads.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springdemo.goodreads.model.Book;
import com.springdemo.goodreads.model.Reader;
import com.springdemo.goodreads.repository.BookRepository;
import com.springdemo.goodreads.repository.ReaderRepository;

/**
 * Mostly used as a facade for all GoodReads controllers
 * Also a placeholder for @Transactional and @Cacheable annotations
 *
 * @author Richard Dimalanta
 */
@Service
public class GoodReadImpl implements GoodReadService {

    private BookRepository bookRepository;
    private ReaderRepository readerRepository;

    @Autowired
    public GoodReadImpl(BookRepository bookRepository, ReaderRepository readerRepository) {
        this.bookRepository = bookRepository;
        this.readerRepository = readerRepository;
    }

    @Override
    @Transactional(readOnly = true)
    @Cacheable(value = "books")
    public Collection<Book> findBooks() throws DataAccessException {
        return bookRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
	public Reader findReaderById(int id) throws DataAccessException {
		return readerRepository.findById(id);
	}

	@Override
	public void saveReader(Reader reader) throws DataAccessException {
		readerRepository.save(reader);
	}


}
