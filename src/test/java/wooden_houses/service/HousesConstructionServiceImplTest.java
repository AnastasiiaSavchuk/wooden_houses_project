package wooden_houses.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import wooden_houses.domain.HouseConstruction;
import wooden_houses.service.impl.HouseConstructionServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HousesConstructionServiceImplTest {

    @Autowired
    private HouseConstructionServiceImpl service;

    @Test
    @DisplayName("Test read all parts building a house")
    public void findAllTest() {
        List<HouseConstruction> constructionList = service.findAll();
        assertThat(constructionList).isNotEmpty();
    }

    @Test
    @DisplayName("Test save, update and delete part building a house")
    public void SaveUpdateDeleteTest() {
        HouseConstruction testConstruction = new HouseConstruction("house_construction_name_create",
                "description_1_create", "description_2_creat", "description_3_creat",
                "description_4_creat", "description_5_creat", "description_6_creat",
                "description_7_creat", "description_8_creat");

        service.save(testConstruction);

        int id = testConstruction.getId();

        HouseConstruction actualHouse = service.findById(id);
        assertThat(testConstruction).isEqualTo(actualHouse);

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
        service.update(updateHouse);
        assertThat(updateHouse).isEqualTo(service.findById(id));

        service.delete(id);
        assertThat(service.findById(id)).isNull();
    }

    @Test
    @DisplayName("Test is exists part building a house")
    public void isExistsTest() {
        int id = 1;
        Assertions.assertNotNull(service.isExists(id));
    }
}