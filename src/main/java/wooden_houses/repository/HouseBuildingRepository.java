package wooden_houses.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.HouseBuilding;

@Repository
public interface HouseBuildingRepository extends JpaRepository<HouseBuilding, Integer> {
}