package wooden_houses.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.HouseConstruction;

@Repository
public interface HouseConstructionRepository extends JpaRepository<HouseConstruction, Integer> {
}