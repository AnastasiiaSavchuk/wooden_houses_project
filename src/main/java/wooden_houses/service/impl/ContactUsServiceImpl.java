package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.ContactUs;
import wooden_houses.repository.ContactUsRepository;
import wooden_houses.service.ContactUsService;


import java.util.List;

@Service
public class ContactUsServiceImpl implements ContactUsService {

    @Autowired
    private ContactUsRepository repository;

    @Override
    public ContactUs save(ContactUs contactUs) {
        return repository.save(contactUs);
    }

    @Override
    public ContactUs findOne(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<ContactUs> findAll() {
        return (List<ContactUs>) repository.findAll();
    }

    @Override
    public void delete(int id) {
        repository.deleteById(id);
    }

    @Override
    public boolean isExists(int id) {
        return repository.existsById(id);
    }
}