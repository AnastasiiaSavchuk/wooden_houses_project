package wooden_houses.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import wooden_houses.domain.House;
import wooden_houses.service.impl.HouseServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HouseServiceImplTest {

    @Autowired
    private HouseServiceImpl service;


    @Test
    @DisplayName("Test read all houses")
    public void findAllTest() {
        List<House> houseList = service.findAll();
        assertThat(houseList).isNotEmpty();
    }

    @Test
    @DisplayName("Test save, update and delete house")
    public void SaveUpdateDeleteTest() {
        House testHouse = new House("house_create", "type_create", "info_creat", "story1_creat",
                "story2_creat", "story3_creat", "story4_creat", "story5_creat",
                "story6_creat", "story7_creat", "story8_creat", "dimensions_creat",
                "houseFootprint_creat", "totalGrossExternalArea_creat",
                "roofPitch_creat", "feature1_creat", "feature2_creat", "purpose_creat",
                "purposeInfo1_creat", "purposeInfo2_creat", "purposeInfo3_creat");

        service.save(testHouse);

        int id = testHouse.getId();

        House actualHouse = service.findById(id);
        assertThat(testHouse).isEqualTo(actualHouse);

        House updateHouse = service.findById(id);
        updateHouse.setHouseName("house_update");
        updateHouse.setHouseType("type_update");
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
        updateHouse.setFootprint("houseFootprint_update");
        updateHouse.setTotalGrossExternalArea("totalGrossExternalArea_update");
        updateHouse.setRoofPitch("roofPitch_update");
        updateHouse.setFeature1("feature1_update");
        updateHouse.setFeature2("feature2_update");
        updateHouse.setPurpose("purpose_update");
        updateHouse.setPurposeInfo1("purposeInfo1_update");
        updateHouse.setPurposeInfo2("purposeInfo2_update");
        updateHouse.setPurposeInfo3("purposeInfo3_update");
        service.update(updateHouse);
        assertThat(updateHouse).isEqualTo(service.findById(id));

        service.delete(id);
        assertThat(service.findById(id)).isNull();
    }

    @Test
    @DisplayName("Test is exists house")
    public void isExistsTest() {
        int id = 1;
        Assertions.assertNotNull(service.isExists(id));
    }
}