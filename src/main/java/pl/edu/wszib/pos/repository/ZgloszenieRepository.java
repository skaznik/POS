package pl.edu.wszib.pos.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import pl.edu.wszib.pos.model.Zgloszenie;

import java.util.List;
import java.util.Optional;

@Repository
public interface ZgloszenieRepository extends CrudRepository<Zgloszenie, Long> {
    Page<Zgloszenie> findAll(Pageable pageable);
    Iterable<Zgloszenie> findAllByDelIsTrue();
}
