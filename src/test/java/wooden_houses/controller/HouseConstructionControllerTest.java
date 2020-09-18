package wooden_houses.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import org.springframework.mock.web.MockHttpServletRequest;
import wooden_houses.domain.HouseConstruction;
import wooden_houses.service.impl.HouseConstructionServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HouseConstructionControllerTest {

    private final MockHttpServletRequest request = new MockHttpServletRequest();
    @Autowired
    private HouseConstructionController controller;
    @Autowired
    private HouseConstructionServiceImpl service;

    @Test
    @DisplayName("Test save, update and delete stage of house construction")
    public void SaveUpdateDeleteTest() {
        HouseConstruction testConstruction = new HouseConstruction("house_construction_name_create",
                "description_1_create", "description_2_creat", "description_3_creat",
                "description_4_creat", "description_5_creat", "description_6_creat",
                "description_7_creat", "description_8_creat");
        ResponseEntity<?> responseEntitySave = controller.createNewHouseConstructionInfo(testConstruction);
        assertThat(responseEntitySave.getStatusCodeValue()).isEqualTo(201);

        int id = testConstruction.getId();

        ResponseEntity<?> responseEntityById = controller.readHouseConstructionInfoById(id);
        if (responseEntityById.getStatusCodeValue() != 200) {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(200);
        }

        HouseConstruction updateHouse = service.findById(id);
        updateHouse.setName("house_construction_name_update");
        updateHouse.setDescription1("type_update");
        updateHouse.setDescription1("description_1_update");
        updateHouse.setDescription2("description_2_update");
        updateHouse.setDescription3("description_3_update");
        updateHouse.setDescription4("description_4_update");
        updateHouse.setDescription5("description_5_update");
        updateHouse.setDescription6("description_6_update");
        updateHouse.setDescription7("description_7_update");
        updateHouse.setDescription8("description_8_update");

        ResponseEntity<?> responseEntityUpdate = controller.updateHouseConstructionInfoById(updateHouse, id);
        if (responseEntityUpdate.getStatusCodeValue() != 200) {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(200);
        }

        ResponseEntity<?> responseEntityDelete = controller.deleteHouseConstructionInfoById(555);
        if (responseEntityDelete.getStatusCodeValue() != 204) {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(204);
        }
    }

    @Test
    @DisplayName("Test read all stages of house construction")
    public void FindAllTest() {
        ResponseEntity<List<HouseConstruction>> responseEntityAllHouses = controller.readAllHouseConstructionInfo();
        if (responseEntityAllHouses.getStatusCodeValue() != 200) {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(200);
        }
    }
}