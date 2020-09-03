package wooden_houses.service;

import wooden_houses.domain.HouseConstruction;

import java.util.List;

public interface HouseConstructionService {

    HouseConstruction save(HouseConstruction houseConstruction);

    HouseConstruction findOne(int id);

    List<HouseConstruction> findAll();

    HouseConstruction update(HouseConstruction houseConstruction);

    void delete(int id);

    boolean isExists(int id);
}