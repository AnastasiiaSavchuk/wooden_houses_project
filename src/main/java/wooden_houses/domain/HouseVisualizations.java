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
public class HouseVisualizations {

    @Id
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
    @Column(name = "first_floor")
    private byte[] firstFloor;

    @Lob
    @Column(name = "second_floor")
    private byte[] secondFloor;

    @Lob
    @Column(name = "basement")
    private byte[] basement;
}