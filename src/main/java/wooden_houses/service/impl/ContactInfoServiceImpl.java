package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.ContactInfo;
import wooden_houses.repository.ContactInfoRepository;
import wooden_houses.service.ContactInfoService;

import java.util.List;

@Service
public class ContactInfoServiceImpl implements ContactInfoService {

    @Autowired
    private ContactInfoRepository repository;

    @Override
    public ContactInfo save(ContactInfo contactInfo) {
        return repository.save(contactInfo);
    }

    @Override
    public ContactInfo findById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<ContactInfo> findAll() {
        return (List<ContactInfo>) repository.findAll();
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