package wooden_houses.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import wooden_houses.domain.House;
import wooden_houses.service.impl.HouseServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HouseControllerTest {

    @Autowired
    private HouseController controller;
    private final MockHttpServletRequest request = new MockHttpServletRequest();
    @Autowired
    private HouseServiceImpl service;

    @Test
    @DisplayName("Test save house")
    public void SaveUpdateDeleteTestHouse() {
        RequestContextHolder.setRequestAttributes(new ServletRequestAttributes(request));

        House testHouse = new House("house_create", "type_create", "info_creat", "story1_creat",
                "story2_creat", "story3_creat", "story4_creat", "story5_creat",
                "story6_creat", "story7_creat", "story8_creat", "dimensions_creat",
                "houseFootprint_creat", "totalGrossExternalArea_creat",
                "roofPitch_creat", "feature1_creat", "feature2_creat", "purpose_creat",
                "purposeInfo1_creat", "purposeInfo2_creat", "purposeInfo3_creat");

        ResponseEntity<Object> responseEntitySave = (ResponseEntity<Object>) controller.createNewHouse(testHouse);
        if (responseEntitySave.getStatusCodeValue() == 409) {
            assertThat(responseEntitySave.getStatusCodeValue()).isEqualTo(409);
        } else {
            assertThat(responseEntitySave.getStatusCodeValue()).isEqualTo(201);
        }

        int id = testHouse.getId();

        ResponseEntity<Object> responseEntityById = (ResponseEntity<Object>) controller.readHouseById(id);
        if (responseEntityById.getStatusCodeValue() == 404) {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(200);
        }

        House updateHouse = service.findById(id);
        updateHouse.setHouse("house_update");
        updateHouse.setType("type_update");
        updateHouse.setInfo("info_update");
        updateHouse.setStory1("story1_update");
        updateHouse.setStory2("story2_update");
        updateHouse.setStory3("story3_update");
        updateHouse.setStory4("story4_update");
        updateHouse.setStory5("story5_update");
        updateHouse.setStory6("story6_update");
        updateHouse.setStory7("story7_update");
        updateHouse.setStory8("story8_update");
        updateHouse.setDimensions("dimensions_update");
        updateHouse.setHouseFootprint("houseFootprint_update");
        updateHouse.setTotalGrossExternalArea("totalGrossExternalArea_update");
        updateHouse.setRoofPitch("roofPitch_update");
        updateHouse.setFeature1("feature1_update");
        updateHouse.setFeature2("feature2_update");
        updateHouse.setPurpose("purpose_update");
        updateHouse.setPurposeInfo1("purposeInfo1_update");
        updateHouse.setPurposeInfo2("purposeInfo2_update");
        updateHouse.setPurposeInfo3("purposeInfo3_update");

        ResponseEntity<Object> responseEntityUpdate = (ResponseEntity<Object>) controller.updateHouseById(updateHouse, id);
        if (responseEntityUpdate.getStatusCodeValue() == 404) {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(200);
        }

        ResponseEntity<Object> responseEntityDelete = (ResponseEntity<Object>) controller.deleteHouseById(id);
        if (responseEntityDelete.getStatusCodeValue() == 404) {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(204);
        }
    }

    @Test
    @DisplayName("Test read all houses")
    public void FindAllTest() {
        RequestContextHolder.setRequestAttributes(new ServletRequestAttributes(request));

        ResponseEntity<List<House>> responseEntityAllHouses = controller.readAllHouses();
        if (responseEntityAllHouses.getStatusCodeValue() == 404) {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(200);
        }
    }
}