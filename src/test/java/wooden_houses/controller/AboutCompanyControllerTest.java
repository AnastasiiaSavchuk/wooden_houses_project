package wooden_houses.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import wooden_houses.domain.AboutCompany;
import wooden_houses.service.impl.AboutCompanyServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class AboutCompanyControllerTest {

    @Autowired
    private AboutCompanyController controller;
    @Autowired
    private AboutCompanyServiceImpl service;

    @Test
    @DisplayName("Test save, update and delete info about company")
    public void SaveUpdateDeleteTest() {
        AboutCompany testInfo = new AboutCompany("information_name_create",
                "information_type_create", "information1_creat", "information2_creat",
                "information3_creat", "information4_creat", "information5_creat",
                "information6_creat", "information7_creat", "information8_creat");
        ResponseEntity<?> responseEntitySave = controller.createNewInfoAboutCompany(testInfo);
        assertThat(responseEntitySave.getStatusCodeValue()).isEqualTo(201);

        int id = testInfo.getId();

        ResponseEntity<?> responseEntityById = controller.readInfoAboutCompanyById(id);
        if (responseEntityById.getStatusCodeValue() != 200) {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(200);
        }

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

        ResponseEntity<?> responseEntityUpdate = controller.updateHouseById(updateInfo, id);
        if (responseEntityUpdate.getStatusCodeValue() != 200) {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(200);
        }

        ResponseEntity<?> responseEntityDelete = controller.deleteInfoAboutCompanyById(id);
        if (responseEntityDelete.getStatusCodeValue() != 204) {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(204);
        }
    }

    @Test
    @DisplayName("Test read all info about company")
    public void FindAllTest() {
        ResponseEntity<List<AboutCompany>> responseEntityAllInfo = controller.readAllInfoAboutCompany();
        if (responseEntityAllInfo.getStatusCodeValue() == 404) {
            assertThat(responseEntityAllInfo.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityAllInfo.getStatusCodeValue()).isEqualTo(200);
        }
    }
}