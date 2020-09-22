package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
@Entity
@Table(name = "contact_us")
@AllArgsConstructor
@NoArgsConstructor
public class ContactInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contact_id")
    private int id;

    @NotEmpty(message = "This field must be filled!")
    @Column(name = "first_name", nullable = false)
    private String firstName;

    @NotEmpty(message = "This field must be filled!")
    @Column(name = "last_name", nullable = false)
    private String lastName;

    @NotEmpty(message = "This is not a valid email address!")
    @Email(message = "Email address hes invalid form: ${validateValue}",
            regexp = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$")
    @Column(name = "email", nullable = false, length = 120)
    private String email;

    @NotNull(message = "PlThis field must be filled!")
    @Column(name = "post_code", nullable = false)
    private int postCode;

    @NotEmpty(message = "This field must be filled!")
    @Column(name = "address", nullable = false)
    private String address;

    @NotEmpty(message = "This field must be filled!")
    @Column(name = "city", nullable = false)
    private String city;

    @NotEmpty(message = "This field must be filled!")
    @Column(name = "country", nullable = false)
    private String country;

    @NotNull(message = "This field must be filled!")
    @Column(name = "phone_number", nullable = false)
    private long phoneNumber;

    @Column(name = "what_are_you_interested_in", nullable = false)
    private String whatAreYouInterestedIn;

    @Lob
    @NotNull(message = "This field must be filled!")
    @Column(name = "your_message", nullable = false)
    private String yourMessage;

    @NotEmpty(message = "This field must be filled!")
    @Column(name = "your_date_for_consultation", nullable = false)
    private String yourDateForConsultation;

    @Lob
    @Column(name = "others")
    private String others;

    public ContactInfo(String firstName, String lastName, String email, int postCode, String address, String city, String country, int phoneNumber, String whatAreYouInterestedIn, String yourMessage, String yourDateForConsultation, String others) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.postCode = postCode;
        this.address = address;
        this.city = city;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.whatAreYouInterestedIn = whatAreYouInterestedIn;
        this.yourMessage = yourMessage;
        this.yourDateForConsultation = yourDateForConsultation;
        this.others = others;
    }
}