package wooden_houses.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.ContactUs;

@Repository
public interface ContactUsRepository extends CrudRepository<ContactUs, Integer> {
}