package wooden_houses.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import wooden_houses.domain.HouseServices;
import wooden_houses.service.impl.HouseServicesServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HouseServicesControllerTest {

    @Autowired
    private HouseServicesController controller;
    @Autowired
    private HouseServicesServiceImpl service;

    @Test
    @DisplayName("Test save, update and delete house service house")
    public void SaveUpdateDeleteTest() {
        HouseServices testService = new HouseServices("name_create", "description_create", "part_1_creat", "part_2_creat",
                "part_3_creat", "part_4_creat");
        ResponseEntity<?> responseEntitySave = controller.createNewHouseService(testService);
        assertThat(responseEntitySave.getStatusCodeValue()).isEqualTo(201);

        int id = testService.getId();

        ResponseEntity<?> responseEntityById = controller.readHouseServiceById(id);
        if (responseEntityById.getStatusCodeValue() != 200) {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(200);
        }

        HouseServices updateService = service.findById(id);
        updateService.setName("name_update");
        updateService.setDescription("description_update");
        updateService.setPart1("part_1_update");
        updateService.setPart2("part_2_update");
        updateService.setPart3("part_3_update");
        updateService.setPart4("part_4_update");

        ResponseEntity<?> responseEntityUpdate = controller.updateHouseServiceById(updateService, id);
        if (responseEntityUpdate.getStatusCodeValue() != 200) {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(200);
        }

        ResponseEntity<?> responseEntityDelete = controller.deleteHouseServiceById(id);
        if (responseEntityDelete.getStatusCodeValue() != 204) {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(204);
        }
    }

    @Test
    @DisplayName("Test read all house services")
    public void FindAllTest() {
        ResponseEntity<List<HouseServices>> responseEntityAllHouses = controller.readAllHouseServices();
        if (responseEntityAllHouses.getStatusCodeValue() != 200) {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(200);
        }
    }
}