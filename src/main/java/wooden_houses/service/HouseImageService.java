package wooden_houses.service;

import wooden_houses.domain.HouseImage;

import java.util.List;

public interface HouseImageService {

    HouseImage save(HouseImage houseImage);

    HouseImage findById(int id);

    List<HouseImage> findAll();

    void delete(int id);

    boolean isExists(int id);
}