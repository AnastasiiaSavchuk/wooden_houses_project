package wooden_houses.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
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
public class HouseImageControllerTest {

    @Autowired
    private HouseImageController controller;
    @Autowired
    private HouseImageServiceImpl service;

    @Test
    @DisplayName("Test save and delete house image")
    public void SaveDeleteTest() throws Exception {
        Path path = Paths.get("E:/CV nastia + Dima/965.jpg");
        String originalFilename = "965.jpg";
        String contentType = "image/jpeg";
        byte[] content = null;

        try {
            content = Files.readAllBytes(path);
        } catch (IOException e) {
            e.printStackTrace();
        }
        MultipartFile testImage = new MockMultipartFile("file", originalFilename, contentType, content);
        ResponseEntity<?> responseEntity = controller.uploadImage(testImage);
        assertThat(responseEntity.getStatusCodeValue()).isEqualTo(200);

        ResponseEntity<?> responseEntityDelete = controller.deleteHouseImagesById(0);
        if (responseEntityDelete.getStatusCodeValue() != 204) {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(204);
        }
    }

    @Test
    @DisplayName("Test save and delete house image")
    public void FindByIdTest() throws IOException {
        ResponseEntity<?> responseEntityById = controller.readHouseImagesById(1);
        if (responseEntityById.getStatusCodeValue() != 200) {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(200);
        }
    }

    @Test
    @DisplayName("Test read all houses")
    public void FindAllTest() throws IOException {
        ResponseEntity<List<HouseImage>> responseEntityAllHouses = controller.readAllHouseImages();
        if (responseEntityAllHouses.getStatusCodeValue() != 200) {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(200);
        }
    }
}