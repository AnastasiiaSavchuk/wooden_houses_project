package project.domain;

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
public class ContactUs {

    @Id
    @Column(name = "contact_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @NotEmpty(message = "Please fill field!")
    @Column(name = "first_name", nullable = false)
    private String firstName;

    @NotEmpty(message = "Please fill field!")
    @Column(name = "last_name", nullable = false)
    private String lastName;

    @NotEmpty(message = "Please fill field!")
    @Email(message = "Email address hes invalid form: ${validateValue}",
            regexp = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$")
    @Column(name = "email", nullable = false, length = 120)
    private String email;

    @NotNull(message = "Please fill field!")
    @Column(name = "post_code", nullable = false)
    private int post_code;

    @NotEmpty(message = "Please fill field!")
    @Column(name = "address", nullable = false)
    private String address;

    @NotEmpty(message = "Please fill field!")
    @Column(name = "country", nullable = false)
    private String country;

    @NotNull(message = "Please fill field!")
    @Column(name = "phone_number", nullable = false)
    private long phoneNumber;

    @Column(name = "what_are_you_interested_in", nullable = false)
    private String whatAreYouInterestedIn;

    @Lob
    @NotNull(message = "Please fill field!")
    @Column(name = "your_message", nullable = false)
    private String yourMessage;

    @Lob
    @Column(name = "others")
    private String others;

    public ContactUs(String firstName, String lastName, String email, int post_code, String address, String country, int phoneNumber, String whatAreYouInterestedIn, String yourMessage, String others) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.post_code = post_code;
        this.address = address;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.whatAreYouInterestedIn = whatAreYouInterestedIn;
        this.yourMessage = yourMessage;
        this.others = others;
    }
}