package wooden_houses.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.Houses;

@Repository
public interface HousesRepository extends JpaRepository<Houses, Integer> {
}