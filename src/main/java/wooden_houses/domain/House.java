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

    @Column(name = "gross_internal_area_first_floor")
    private String grossInternalAreaFirstFloor;

    @Column(name = "gross_internal_area_second_floor")
    private String grossInternalAreaSecondFloor;

    @Column(name = "heating")
    private String heating;

    @Column(name = "roof_pitch")
    private String roofPitch;

    @Column(name = "features")
    private String feature;

    @Lob
    @Column(name = "purpose")
    private String purpose;

    @Lob
    @Column(name = "purpose_informaition")
    private String purposeInformation;

    public House(String name, String type, String description, String story, String dimensions, String houseFootprint, String totalGrossExternalArea, String grossInternalAreaFirstFloor, String grossInternalAreaSecondFloor, String heating, String roofPitch, String feature, String purpose, String purposeInformation) {
        this.name = name;
        this.type = type;
        this.description = description;
        this.story = story;
        this.dimensions = dimensions;
        this.houseFootprint = houseFootprint;
        this.totalGrossExternalArea = totalGrossExternalArea;
        this.grossInternalAreaFirstFloor = grossInternalAreaFirstFloor;
        this.grossInternalAreaSecondFloor = grossInternalAreaSecondFloor;
        this.heating = heating;
        this.roofPitch = roofPitch;
        this.feature = feature;
        this.purpose = purpose;
        this.purposeInformation = purposeInformation;
    }
}