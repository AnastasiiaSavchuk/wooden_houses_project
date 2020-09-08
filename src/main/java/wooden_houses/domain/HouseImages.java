package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@Table(name = "house_images")
@AllArgsConstructor
@NoArgsConstructor
public class HouseImages {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "image_id")
    private int id;

    @Lob
    @Column(name = "image")
    private byte[] image;

    @Column(name = "house_id")
    private int houseId;

    public HouseImages(byte[] image, int houseId) {
        this.image = image;
        this.houseId = houseId;
    }
}