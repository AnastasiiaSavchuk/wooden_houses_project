/*
package wooden_houses;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.multipart.MultipartFile;
import wooden_houses.domain.HouseImage;
import wooden_houses.service.impl.HouseImageServiceImpl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HouseImageServiceImplTest {

    @Autowired
    private HouseImageServiceImpl service;


    @Test
    @DisplayName("Test read all house images")
    public void findAllTest() {
        List<HouseImage> imageList = service.findAll();
        assertThat(imageList).isNotEmpty();
    }

    @Test
    @DisplayName("Test read by id house image")
    public void findByIdTest() {
        int id = 1;
        assertThat(service.findById(id)).isNotNull();
    }

    @Test
    @DisplayName("Test save and delete house image")
    public void SaveDeleteTest() throws IOException {

        MultipartFile file = (MultipartFile) new File("E:/CV nastia + Dima./123png");

        HouseImage testImage = new HouseImage(file.getBytes(), file.getOriginalFilename());

        service.save(testImage);

        int id = testImage.getId();

        service.delete(id);
        assertThat(service.findById(id)).isNull();
    }

    @Test
    @DisplayName("test is exists house image")
    public void isExistsTest() {
        int id = 1;
        service.isExists(id);
        assertThat(service.isExists(id)).isTrue();
    }
}*/
