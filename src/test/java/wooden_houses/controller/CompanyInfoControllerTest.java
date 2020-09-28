package wooden_houses.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import wooden_houses.domain.CompanyInfo;
import wooden_houses.service.impl.CompanyInfoServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class CompanyInfoControllerTest {

    @Autowired
    private CompanyInfoController controller;
    @Autowired
    private CompanyInfoServiceImpl service;

    @Test
    @DisplayName("Test save, update and delete info about company")
    public void SaveUpdateDeleteTest() {
        CompanyInfo testInfo = new CompanyInfo("info_name_create",
                "info_type_create", "info1_creat", "info2_creat",
                "info3_creat", "info4_creat", "info5_creat",
                "info6_creat", "info7_creat", "info8_creat");
        ResponseEntity<?> responseEntitySave = controller.createNewInfoAboutCompany(testInfo);
        assertThat(responseEntitySave.getStatusCodeValue()).isEqualTo(201);

        int id = testInfo.getId();

        ResponseEntity<?> responseEntityById = controller.readInfoAboutCompanyById(id);
        if (responseEntityById.getStatusCodeValue() != 200) {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(200);
        }

        CompanyInfo updateInfo = service.findById(id);
        updateInfo.setInfoName("info_name_update");
        updateInfo.setInfoType("info_type_update");
        updateInfo.setInfo1("info1_update");
        updateInfo.setInfo2("info2_update");
        updateInfo.setInfo3("info3_update");
        updateInfo.setInfo4("info4_update");
        updateInfo.setInfo5("info5_update");
        updateInfo.setInfo6("info6_update");
        updateInfo.setInfo7("info7_update");
        updateInfo.setInfo8("info8_update");

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
        ResponseEntity<List<CompanyInfo>> responseEntityAllInfo = controller.readAllInfoAboutCompany();
        if (responseEntityAllInfo.getStatusCodeValue() == 404) {
            assertThat(responseEntityAllInfo.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityAllInfo.getStatusCodeValue()).isEqualTo(200);
        }
    }
}