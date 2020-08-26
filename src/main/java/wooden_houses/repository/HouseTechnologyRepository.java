package wooden_houses.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.HouseTechnology;

@Repository
public interface HouseTechnologyRepository extends JpaRepository<HouseTechnology, Integer> {
}