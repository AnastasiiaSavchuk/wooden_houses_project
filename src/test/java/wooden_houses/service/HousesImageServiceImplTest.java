package wooden_houses.service;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.web.multipart.MultipartFile;
import wooden_houses.domain.HouseImage;
import wooden_houses.service.impl.HouseImageServiceImpl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HousesImageServiceImplTest {

    @Autowired
    private HouseImageServiceImpl service;

    @Test
    @DisplayName("Test read all house images")
    public void findAllTest() {
        List<HouseImage> imageList = service.findAll();
        assertThat(imageList).isNotEmpty();
    }

    @Test
    @DisplayName("Test read all house ids")
    public void findAllIdsTest() {
        List<Integer> idsList = service.getAllIds();
        assertThat(idsList).isNotEmpty();
    }

    @Test
    @DisplayName("Test save and delete house image")
    public void SaveDeleteTest() throws IOException {
        Path path = Paths.get("E:/CV nastia + Dima/965.jpg");
        String originalFilename = "965.jpg";
        String contentType = "image/jpeg";
        byte[] content = null;

        try {
            content = Files.readAllBytes(path);
        } catch (IOException e) {
            e.printStackTrace();
        }
        MultipartFile file = new MockMultipartFile("file", originalFilename, contentType, content);

        HouseImage testImage = new HouseImage(file.getBytes(), file.getOriginalFilename());

        service.save(testImage);
        int id = testImage.getId();

        HouseImage actualImage = service.findById(id);

        assertThat(testImage).isEqualTo(actualImage);

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
}
