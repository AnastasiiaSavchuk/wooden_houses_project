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

    @Column(name = "image_name")
    private String imageName;

    public HouseImages(byte[] image, String imageName) {
        this.image = image;
        this.imageName = imageName;
    }
}