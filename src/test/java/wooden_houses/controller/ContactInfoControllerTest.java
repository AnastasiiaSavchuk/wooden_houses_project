package wooden_houses.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import wooden_houses.domain.ContactInfo;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class ContactInfoControllerTest {

    @Autowired
    private ContactInfoController controller;

    @Test
    @DisplayName("Test save house")
    public void SaveUpdateDeleteTestHouse() {
        ContactInfo testUserInfo = new ContactInfo("first_name_create", "last_name_create", "email@gmail.com",
                75069, "address_creat", "city_creat", "country_creat", 380666666,
                "what_are_you_interested_in_creat", "your_message_creat", "your_date_for_consultation_creat",
                "others_creat");
        ResponseEntity<?> responseEntitySave = controller.createNewContactInfo(testUserInfo);
        assertThat(responseEntitySave.getStatusCodeValue()).isEqualTo(201);

        int id = testUserInfo.getId();

        ResponseEntity<?> responseEntityById = controller.readContactInfoById(id);
        if (responseEntityById.getStatusCodeValue() != 200) {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityById.getStatusCodeValue()).isEqualTo(200);
        }

        ResponseEntity<?> responseEntityDelete = controller.deleteContactById(id);
        if (responseEntityDelete.getStatusCodeValue() != 204) {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityDelete.getStatusCodeValue()).isEqualTo(204);
        }
    }

    @Test
    @DisplayName("Test read all houses")
    public void FindAllTest() {
        ResponseEntity<List<ContactInfo>> responseEntityAllHouses = controller.readAllContacts();
        if (responseEntityAllHouses.getStatusCodeValue() != 200) {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(404);
        } else {
            assertThat(responseEntityAllHouses.getStatusCodeValue()).isEqualTo(200);
        }
    }
}