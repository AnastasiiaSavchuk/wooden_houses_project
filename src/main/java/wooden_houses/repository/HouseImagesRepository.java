package wooden_houses.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.HouseImages;

import java.util.List;

@Repository
public interface HouseImagesRepository extends JpaRepository<HouseImages, Integer> {

    List<HouseImages> findByHouseId(int houseId);
}
