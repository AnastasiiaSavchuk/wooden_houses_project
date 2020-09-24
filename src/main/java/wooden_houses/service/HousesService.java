package wooden_houses.service;

import wooden_houses.domain.Houses;

import java.util.List;

public interface HousesService {

    Houses save(Houses houses);

    Houses findById(int id);

    List<Houses> findAll();

    Houses update(Houses houses);

    void delete(int id);

    boolean isExists(int id);
}