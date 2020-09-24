package wooden_houses.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import wooden_houses.domain.Houses;
import wooden_houses.service.impl.HousesServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HousesServiceImplTest {

    @Autowired
    private HousesServiceImpl service;


    @Test
    @DisplayName("Test read all houses")
    public void findAllTest() {
        List<Houses> housesList = service.findAll();
        assertThat(housesList).isNotEmpty();
    }

    @Test
    @DisplayName("Test save, update and delete house")
    public void SaveUpdateDeleteTest() {
        Houses testHouses = new Houses("house_create", "type_create", "info_creat", "story1_creat",
                "story2_creat", "story3_creat", "story4_creat", "story5_creat",
                "story6_creat", "story7_creat", "story8_creat", "dimensions_creat",
                "houseFootprint_creat", "totalGrossExternalArea_creat",
                "roofPitch_creat", "feature1_creat", "feature2_creat", "purpose_creat",
                "purposeInfo1_creat", "purposeInfo2_creat", "purposeInfo3_creat");

        service.save(testHouses);

        int id = testHouses.getId();

        Houses actualHouses = service.findById(id);
        assertThat(testHouses).isEqualTo(actualHouses);

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
        service.update(updateHouses);
        assertThat(updateHouses).isEqualTo(service.findById(id));

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