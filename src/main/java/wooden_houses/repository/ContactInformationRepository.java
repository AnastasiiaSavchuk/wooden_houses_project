package wooden_houses.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.ContactInfo;

@Repository
public interface ContactInformationRepository extends CrudRepository<ContactInfo, Integer> {
}