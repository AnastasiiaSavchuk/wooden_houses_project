package wooden_houses.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import wooden_houses.domain.Houses;
import wooden_houses.service.impl.HousesServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HousesControllerTest {

    @Autowired
    private HousesController controller;
    @Autowired
    private HousesServiceImpl service;

    @Test
    @DisplayName("Test save house")
    public void SaveUpdateDeleteTest() {
        Houses testHouses = new Houses("house_create", "type_create", "info_creat", "story1_creat",
                "story2_creat", "story3_creat", "story4_creat", "story5_creat",
                "story6_creat", "story7_creat", "story8_creat", "dimensions_creat",
                "houseFootprint_creat", "totalGrossExternalArea_creat",
                "roofPitch_creat", "feature1_creat", "feature2_creat", "purpose_creat",
                "purposeInfo1_creat", "purposeInfo2_creat", "purposeInfo3_creat");
        ResponseEntity<?> responseEntitySave = controller.createNewHouse(testHouses);
        assertThat(responseEntitySave.getStatusCodeValue()).isEqualTo(201);

        int id = testHouses.getId();

        ResponseEntity<?> responseEntityById = controller.readHouseById(id);
        if (responseEntityById.getStatusCodeValue() != 200) {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(200);
        }

        Houses updateHouses = service.findById(id);
        updateHouses.setHouseName("house_update");
        updateHouses.setHouseType("type_update");
        updateHouses.setInfo("info_update");
        updateHouses.setStory1("story1_update");
        updateHouses.setStory2("story2_update");
        updateHouses.setStory3("story3_update");
        updateHouses.setStory4("story4_update");
        updateHouses.setStory5("story5_update");
        updateHouses.setStory6("story6_update");
        updateHouses.setStory7("story7_update");
        updateHouses.setStory8("story8_update");
        updateHouses.setDimensions("dimensions_update");
        updateHouses.setFootprint("houseFootprint_update");
        updateHouses.setTotalGrossExternalArea("totalGrossExternalArea_update");
        updateHouses.setRoofPitch("roofPitch_update");
        updateHouses.setFeature1("feature1_update");
        updateHouses.setFeature2("feature2_update");
        updateHouses.setPurpose("purpose_update");
        updateHouses.setPurposeInfo1("purposeInfo1_update");
        updateHouses.setPurposeInfo2("purposeInfo2_update");
        updateHouses.setPurposeInfo3("purposeInfo3_update");

        ResponseEntity<?> responseEntityUpdate = controller.updateHouseById(updateHouses, id);
        if (responseEntityUpdate.getStatusCodeValue() != 200) {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityUpdate.getStatusCodeValue()).isEqualTo(200);
        }

        ResponseEntity<?> responseEntityDelete = controller.deleteHouseById(id);
        if (responseEntityDelete.getStatusCodeValue() != 204) {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(204);
        }
    }

    @Test
    @DisplayName("Test read all houses")
    public void FindAllTest() {
        ResponseEntity<List<Houses>> responseEntityAllHouses = controller.readAllHouses();
        if (responseEntityAllHouses.getStatusCodeValue() != 200) {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(200);
        }
    }
}