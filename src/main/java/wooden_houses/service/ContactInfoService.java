package wooden_houses.service;

import wooden_houses.domain.ContactInfo;

import java.util.List;

public interface ContactInfoService {

    ContactInfo save(ContactInfo contactInfo);

    ContactInfo findById(int id);

    List<ContactInfo> findAll();

    void delete(int id);

    boolean isExists(int id);
}