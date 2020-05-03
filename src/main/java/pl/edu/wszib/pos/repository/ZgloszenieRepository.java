package pl.edu.wszib.pos.repository;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import pl.edu.wszib.pos.model.Zgloszenie;

import java.util.Optional;

@Repository
public interface ZgloszenieRepository extends PagingAndSortingRepository<Zgloszenie, Long > {
 public Page<Zgloszenie> findAllByIdAndDelIsFalse(Long id, Pageable pageable);
}
