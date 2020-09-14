package wooden_houses.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.HouseImage;

@Repository
public interface HouseImageRepository extends JpaRepository<HouseImage, Integer> {
}
