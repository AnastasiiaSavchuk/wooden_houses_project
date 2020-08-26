package wooden_houses.service;

import wooden_houses.domain.HouseTechnology;

import java.util.List;

public interface HouseTechnologyService {

    HouseTechnology save(HouseTechnology houseTechnology);

    HouseTechnology findOne(int id);

    List<HouseTechnology> findAll();

    HouseTechnology update(HouseTechnology houseTechnology);

    void delete(int id);

    boolean isExists(int id);
}