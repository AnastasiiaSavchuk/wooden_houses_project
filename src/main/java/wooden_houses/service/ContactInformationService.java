package wooden_houses.service;

import wooden_houses.domain.ContactInformation;

import java.util.List;

public interface ContactInformationService {

    ContactInformation save(ContactInformation contactInformation);

    ContactInformation findOne(int id);

    List<ContactInformation> findAll();

    void delete(int id);

    boolean isExists(int id);
}