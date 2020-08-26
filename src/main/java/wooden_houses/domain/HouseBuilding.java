package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Data
@Entity
@Table(name = "house_building")
@AllArgsConstructor
@NoArgsConstructor
public class HouseBuilding {

    @Id
    @Column(name = "house_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "name")
    private String name;

    @Lob
    @Column(name = "description")
    private String description;

    public HouseBuilding(String name, String description) {
        this.name = name;
        this.description = description;
    }
}