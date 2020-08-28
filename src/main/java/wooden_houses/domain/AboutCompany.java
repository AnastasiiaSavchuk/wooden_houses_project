package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@Table(name = "about_company")
@AllArgsConstructor
@NoArgsConstructor
public class AboutCompany {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "company_id")
    private int id;

    @Column(name = "information_name")
    private String informationName;

    @Lob
    @Column(name = "information_type")
    private String informationType;

    @Lob
    @Column(name = "information_description")
    private String informationDescription;

    public AboutCompany(String informationName, String informationType, String informationDescription) {
        this.informationName = informationName;
        this.informationType = informationType;
        this.informationDescription = informationDescription;
    }
}