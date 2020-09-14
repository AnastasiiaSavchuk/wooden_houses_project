package wooden_houses;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import wooden_houses.domain.AboutCompany;
import wooden_houses.service.AboutCompanyService;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class AboutCompanyServiceImplTest {

    @Autowired
    private AboutCompanyService service;


    @Test
    @DisplayName("Read all house in dataBase test")
    public void findAllTest() {
        List<AboutCompany> infoList = service.findAll();
        assertThat(infoList).isNotEmpty();
    }

    @Test
    @DisplayName("Save, update and delete house")
    public void SaveUpdateDeleteTest() {
        AboutCompany testInfo = new AboutCompany("information_name_create", "information_type_create", "information1_creat", "information2_creat",
                "information3_creat", "information4_creat", "information5_creat",
                "information6_creat", "information7_creat", "information8_creat");

        int id = lastId(service.findAll());

        service.save(testInfo);
        AboutCompany actualHouse = service.findById(id);
        assertThat(testInfo).isEqualTo(actualHouse);

        AboutCompany updateInfo = service.findById(id);
        updateInfo.setInformationName("information_name_update");
        updateInfo.setInformationType("information_type_update");
        updateInfo.setInformation1("information1_update");
        updateInfo.setInformation2("information2_update");
        updateInfo.setInformation3("information3_update");
        updateInfo.setInformation4("information4_update");
        updateInfo.setInformation5("information5_update");
        updateInfo.setInformation6("information6_update");
        updateInfo.setInformation7("information7_update");
        updateInfo.setInformation8("information8_update");
        service.update(updateInfo);
        assertThat(updateInfo).isEqualTo(service.findById(id));

        service.isExists(id);
        assertThat(service.isExists(id)).isTrue();

        service.delete(id);
        assertThat(service.findById(id)).isNull();
    }

    @Test
    @DisplayName("Is exists information about company test")
    public void isExistsTest() {
        int id = 1;
        service.isExists(id);
        assertThat(service.isExists(id)).isTrue();
    }

    int lastId(List<AboutCompany> infoList) {
        int lastElement = infoList.size() + 1;
        return lastElement;
    }
}