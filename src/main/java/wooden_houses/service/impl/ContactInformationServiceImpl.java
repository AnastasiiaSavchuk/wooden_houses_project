package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.ContactInformation;
import wooden_houses.repository.ContactInformationRepository;
import wooden_houses.service.ContactInformationService;

import java.util.List;

@Service
public class ContactInformationServiceImpl implements ContactInformationService {

    @Autowired
    private ContactInformationRepository repository;

    @Override
    public ContactInformation save(ContactInformation contactInformation) {
        return repository.save(contactInformation);
    }

    @Override
    public ContactInformation findById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<ContactInformation> findAll() {
        return (List<ContactInformation>) repository.findAll();
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