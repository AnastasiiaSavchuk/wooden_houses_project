package wooden_houses.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import wooden_houses.domain.CompanyInfo;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class CompanyInfoServiceImplTest {

    @Autowired
    private AboutCompanyService service;

    @Test
    @DisplayName("Test save, update and delete info about company")
    public void SaveUpdateDeleteTest() {
        CompanyInfo testInfo = new CompanyInfo("information_name_create", "information_type_create", "information1_creat", "information2_creat",
                "information3_creat", "information4_creat", "information5_creat",
                "information6_creat", "information7_creat", "information8_creat");

        service.save(testInfo);

        int id = testInfo.getId();

        CompanyInfo actualInfo = service.findById(id);
        assertThat(testInfo).isEqualTo(actualInfo);

        CompanyInfo updateInfo = service.findById(id);
        updateInfo.setInfoName("information_name_update");
        updateInfo.setInfoType("information_type_update");
        updateInfo.setInfo1("information1_update");
        updateInfo.setInfo2("information2_update");
        updateInfo.setInfo3("information3_update");
        updateInfo.setInfo4("information4_update");
        updateInfo.setInfo5("information5_update");
        updateInfo.setInfo6("information6_update");
        updateInfo.setInfo7("information7_update");
        updateInfo.setInfo8("information8_update");
        service.update(updateInfo);
        assertThat(updateInfo).isEqualTo(service.findById(id));

        service.delete(id);
        assertThat(service.findById(id)).isNull();
    }

    @Test
    @DisplayName("Test is exists information about company")
    public void isExistsTest() {
        int id = 1;
        Assertions.assertNotNull(service.isExists(id));
    }
}