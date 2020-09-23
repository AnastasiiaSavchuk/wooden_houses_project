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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "info_id")
    private int id;

    @Column(name = "information_name")
    private String informationName;

    @Lob
    @Column(name = "information_type")
    private String informationType;

    @Lob
    @Column(name = "information_1")
    private String information1;

    @Lob
    @Column(name = "information_2")
    private String information2;

    @Lob
    @Column(name = "information_3")
    private String information3;

    @Lob
    @Column(name = "information_4")
    private String information4;

    @Lob
    @Column(name = "information_5")
    private String information5;

    @Lob
    @Column(name = "information_6")
    private String information6;

    @Lob
    @Column(name = "information_7")
    private String information7;

    @Lob
    @Column(name = "information_8")
    private String information8;

    public AboutCompany(String informationName, String informationType, String information1, String information2, String information3, String information4, String information5, String information6, String information7, String information8) {
        this.informationName = informationName;
        this.informationType = informationType;
        this.information1 = information1;
        this.information2 = information2;
        this.information3 = information3;
        this.information4 = information4;
        this.information5 = information5;
        this.information6 = information6;
        this.information7 = information7;
        this.information8 = information8;
    }
}