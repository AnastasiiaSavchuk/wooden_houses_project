package wooden_houses.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import wooden_houses.domain.ContactInfo;
import wooden_houses.service.impl.ContactInfoServiceImpl;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class ContactInfoServiceImplTest {

    @Autowired
    private ContactInfoServiceImpl service;

    @Test
    @DisplayName("Test read all user contact information")
    public void findAllTest() {
        List<ContactInfo> infoList = service.findAll();
        assertThat(infoList).isNotEmpty();
    }

    @Test
    @DisplayName("Test save and delete user contact information")
    public void SaveDeleteTest() {
        ContactInfo testUserInfo = new ContactInfo("first_name_create", "last_name_create", "email@gmail.com",
                75069, "address_creat", "city_creat", "country_creat", 380666666,
                "what_are_you_interested_in_creat", "your_message_creat", "your_date_for_consultation_creat",
                "others_creat");

        service.save(testUserInfo);

        int id = testUserInfo.getId();

        ContactInfo actualInfo = service.findById(id);
        assertThat(testUserInfo).isEqualTo(actualInfo);


        service.delete(id);
        assertThat(service.findById(id)).isNull();
    }

    @Test
    @DisplayName("Test is exists user contact information")
    public void isExistsTest() {
        int id = 1;
        Assertions.assertNotNull(service.isExists(id));
    }
}