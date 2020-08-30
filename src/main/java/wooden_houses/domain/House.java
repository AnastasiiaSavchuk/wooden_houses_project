package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name = "house")
@AllArgsConstructor
@NoArgsConstructor
public class House implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "house_id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "type")
    private String type;

    @Lob
    @Column(name = "description")
    private String description;

    @Lob
    @Column(name = "story")
    private String story;

    @Column(name = "dimensions")
    private String dimensions;

    @Column(name = "house_footprint")
    private String houseFootprint;

    @Column(name = "total_gross_external_area")
    private String totalGrossExternalArea;

    @Column(name = "roof_pitch")
    private String roofPitch;

    @Column(name = "feature_1")
    private String feature1;

    @Column(name = "feature_2")
    private String feature2;

    @Lob
    @Column(name = "purpose")
    private String purpose;

    @Lob
    @Column(name = "purpose_informaition")
    private String purposeInformation;

    public House(String name, String type, String description, String story, String dimensions, String houseFootprint, String totalGrossExternalArea, String roofPitch, String feature1, String feature2, String purpose, String purposeInformation) {
        this.name = name;
        this.type = type;
        this.description = description;
        this.story = story;
        this.dimensions = dimensions;
        this.houseFootprint = houseFootprint;
        this.totalGrossExternalArea = totalGrossExternalArea;
        this.roofPitch = roofPitch;
        this.feature1 = feature1;
        this.feature2 = feature2;
        this.purpose = purpose;
        this.purposeInformation = purposeInformation;
    }
}