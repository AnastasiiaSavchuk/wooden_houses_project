package wooden_houses.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.House;

@Repository
public interface HouseRepository extends JpaRepository<House, Integer> {
}