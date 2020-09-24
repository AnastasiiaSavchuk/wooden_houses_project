package wooden_houses.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import wooden_houses.domain.HouseServices;
import wooden_houses.service.impl.HouseServicesServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HousesServicesServiceImplTest {

    @Autowired
    private HouseServicesServiceImpl service;

    @Test
    @DisplayName("Test read all house services")
    public void findAllTest() {
        List<HouseServices> serviceList = service.findAll();
        assertThat(serviceList).isNotEmpty();
    }

    @Test
    @DisplayName("Test save, update and delete house service")
    public void SaveUpdateDeleteTest() {
        HouseServices testService = new HouseServices("name_create", "description_create", "part_1_creat", "part_2_creat",
                "part_3_creat", "part_4_creat");

        service.save(testService);

        int id = testService.getId();

        HouseServices actualHouse = service.findById(id);
        assertThat(testService).isEqualTo(actualHouse);

        HouseServices updateService = service.findById(id);
        updateService.setName("name_update");
        updateService.setDescription("description_update");
        updateService.setPart1("part_1_update");
        updateService.setPart2("part_2_update");
        updateService.setPart3("part_3_update");
        updateService.setPart4("part_4_update");
        service.update(updateService);
        assertThat(updateService).isEqualTo(service.findById(id));

        service.delete(id);
        assertThat(service.findById(id)).isNull();
    }

    @Test
    @DisplayName("test is exists house service")
    public void isExistsTest() {
        int id = 1;
        Assertions.assertNotNull(service.isExists(id));
    }
}