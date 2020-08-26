package wooden_houses.service;

import wooden_houses.domain.House;

import java.util.List;

public interface HouseService {

    House save(House house);

    House findOne(int id);

    List<House> findAll();

    House update(House house);

    void delete(int id);

    boolean isExists(int id);
}