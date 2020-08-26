package wooden_houses.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.HouseServices;

@Repository
public interface HouseServicesRepository extends JpaRepository<HouseServices, Integer> {
}