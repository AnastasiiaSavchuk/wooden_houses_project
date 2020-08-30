package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@Table(name = "house_visualizations")
@AllArgsConstructor
@NoArgsConstructor
public class HouseImages {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "house_id")
    private int id;

    @Lob
    @Column(name = "image_1")
    private byte[] image1;

    @Lob
    @Column(name = "image_2")
    private byte[] image2;

    @Lob
    @Column(name = "image_3")
    private byte[] image3;

    @Lob
    @Column(name = "image_4")
    private byte[] image4;

    @Lob
    @Column(name = "image_5")
    private byte[] image5;

    @Lob
    @Column(name = "image_6")
    private byte[] image6;

    @Lob
    @Column(name = "image_7")
    private byte[] image7;

    @Lob
    @Column(name = "image_8")
    private byte[] image8;

    @Lob
    @Column(name = "image_9")
    private byte[] image9;

    @Lob
    @Column(name = "image_10")
    private byte[] image10;

    @Lob
    @Column(name = "image_11")
    private byte[] image11;

    @Lob
    @Column(name = "image_12")
    private byte[] image12;

    @Lob
    @Column(name = "first_floor")
    private byte[] firstFloor;

    @Lob
    @Column(name = "second_floor")
    private byte[] secondFloor;

    @Lob
    @Column(name = "basement")
    private byte[] basement;

    public HouseImages(byte[] image1, byte[] image2, byte[] image3, byte[] image4, byte[] image5, byte[] image6, byte[] image7, byte[] image8, byte[] image9, byte[] image10, byte[] image11, byte[] image12, byte[] firstFloor, byte[] secondFloor, byte[] basement) {
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.image4 = image4;
        this.image5 = image5;
        this.image6 = image6;
        this.image7 = image7;
        this.image8 = image8;
        this.image9 = image9;
        this.image10 = image10;
        this.image11 = image11;
        this.image12 = image12;
        this.firstFloor = firstFloor;
        this.secondFloor = secondFloor;
        this.basement = basement;
    }
}