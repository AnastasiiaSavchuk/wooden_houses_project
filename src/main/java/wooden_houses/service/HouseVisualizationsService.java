package wooden_houses.service;

import wooden_houses.domain.HouseVisualizations;

import java.util.List;

public interface HouseVisualizationsService {

    HouseVisualizations save(HouseVisualizations houseVisualizations);

    HouseVisualizations findOne(int id);

    List<HouseVisualizations> findAll();

    HouseVisualizations update(HouseVisualizations houseVisualizations);

    void delete(int id);

    boolean isExists(int id);
}