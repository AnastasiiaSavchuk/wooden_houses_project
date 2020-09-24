package wooden_houses.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import wooden_houses.domain.CompanyInfo;

@Repository
public interface AboutCompanyRepository extends CrudRepository<CompanyInfo, Integer> {
}