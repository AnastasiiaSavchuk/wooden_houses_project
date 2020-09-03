package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@Table(name = "house_construction")
@AllArgsConstructor
@NoArgsConstructor
public class HouseConstruction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "house_construction_id")
    private int id;

    @Column(name = "house_construction_name")
    private String name;

    @Lob
    @Column(name = "description_1")
    private String description1;

    @Lob
    @Column(name = "description_2")
    private String description2;

    @Lob
    @Column(name = "description_3")
    private String description3;

    @Lob
    @Column(name = "description_4")
    private String description4;

    @Lob
    @Column(name = "description_5")
    private String description5;

    @Lob
    @Column(name = "description_6")
    private String description6;

    @Lob
    @Column(name = "description_7")
    private String description7;

    @Lob
    @Column(name = "description_8")
    private String description8;

    public HouseConstruction(String name, String description1, String description2, String description3, String description4, String description5, String description6, String description7, String description8) {
        this.name = name;
        this.description1 = description1;
        this.description2 = description2;
        this.description3 = description3;
        this.description4 = description4;
        this.description5 = description5;
        this.description6 = description6;
        this.description7 = description7;
        this.description8 = description8;
    }
}