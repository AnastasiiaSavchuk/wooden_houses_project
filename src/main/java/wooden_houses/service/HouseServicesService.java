package wooden_houses.service;

import wooden_houses.domain.HouseServices;

import java.util.List;

public interface HouseServicesService {

    HouseServices save(HouseServices houseServices);

    HouseServices findById(int id);

    List<HouseServices> findAll();

    HouseServices update(HouseServices houseServices);

    void delete(int id);

    boolean isExists(int id);
}