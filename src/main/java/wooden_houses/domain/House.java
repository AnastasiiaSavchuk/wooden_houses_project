package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@Table(name = "house")
@AllArgsConstructor
@NoArgsConstructor
public class House {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "house_id")
    private int id;

    @Column(name = "house_name")
    private String houseName;

    @Column(name = "house_type")
    private String houseType;

    @Lob
    @Column(name = "info")
    private String info;

    @Lob
    @Column(name = "story_1")
    private String story1;

    @Lob
    @Column(name = "story_2")
    private String story2;

    @Lob
    @Column(name = "story_3")
    private String story3;

    @Lob
    @Column(name = "story_4")
    private String story4;

    @Lob
    @Column(name = "story_5")
    private String story5;

    @Lob
    @Column(name = "story_6")
    private String story6;

    @Lob
    @Column(name = "story_7")
    private String story7;

    @Lob
    @Column(name = "story_8")
    private String story8;

    @Column(name = "dimensions")
    private String dimensions;

    @Column(name = "footprint")
    private String footprint;

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
    @Column(name = "purpose_infor_1")
    private String purposeInfo1;

    @Lob
    @Column(name = "purpose_infor_2")
    private String purposeInfo2;

    @Lob
    @Column(name = "purpose_infor_3")
    private String purposeInfo3;

    public House(String houseName, String houseType, String info, String story1, String story2, String story3,
                 String story4, String story5, String story6, String story7, String story8, String dimensions,
                 String footprint, String totalGrossExternalArea, String roofPitch, String feature1, String feature2,
                 String purpose, String purposeInfo1, String purposeInfo2, String purposeInfo3) {
        this.houseName = houseName;
        this.houseType = houseType;
        this.info = info;
        this.story1 = story1;
        this.story2 = story2;
        this.story3 = story3;
        this.story4 = story4;
        this.story5 = story5;
        this.story6 = story6;
        this.story7 = story7;
        this.story8 = story8;
        this.dimensions = dimensions;
        this.footprint = footprint;
        this.totalGrossExternalArea = totalGrossExternalArea;
        this.roofPitch = roofPitch;
        this.feature1 = feature1;
        this.feature2 = feature2;
        this.purpose = purpose;
        this.purposeInfo1 = purposeInfo1;
        this.purposeInfo2 = purposeInfo2;
        this.purposeInfo3 = purposeInfo3;
    }
}