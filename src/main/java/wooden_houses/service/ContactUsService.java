package wooden_houses.service;

import wooden_houses.domain.ContactUs;

import java.util.List;

public interface ContactUsService {

    ContactUs save(ContactUs contactUs);

    ContactUs findOne(int id);

    List<ContactUs> findAll();

    void delete(int id);

    boolean isExists(int id);
}