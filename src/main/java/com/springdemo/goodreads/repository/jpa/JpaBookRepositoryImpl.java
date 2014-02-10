package com.springdemo.goodreads.repository.jpa;

import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;

import com.springdemo.goodreads.model.Book;
import com.springdemo.goodreads.repository.BookRepository;

/**
 * JPA implementation of the {@link VetRepository} interface.
 *
 * @author Richard Dimalanta
 */
@Repository
public class JpaBookRepositoryImpl implements BookRepository {

	@PersistenceContext
	private EntityManager em;

	@Override
    @Cacheable(value = "books")
    @SuppressWarnings("unchecked")
    public Collection<Book> findAll() {
    	
    	String sql = "SELECT book FROM Book book";
    	List<Book> bookList = (List<Book>) this.em.createQuery(sql).getResultList();
        return bookList;
    }

}
