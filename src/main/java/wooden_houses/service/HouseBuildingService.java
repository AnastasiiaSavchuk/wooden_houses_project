package wooden_houses.service;

import wooden_houses.domain.HouseBuilding;

import java.util.List;

public interface HouseBuildingService {

    HouseBuilding save(HouseBuilding houseBuilding);

    HouseBuilding findOne(int id);

    List<HouseBuilding> findAll();

    HouseBuilding update(HouseBuilding houseBuilding);

    void delete(int id);

    boolean isExists(int id);
}