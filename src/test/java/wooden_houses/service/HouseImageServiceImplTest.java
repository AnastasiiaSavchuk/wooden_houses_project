package wooden_houses.service;

import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class HouseImageServiceImplTest {

   /* @Autowired
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
    }*/
}