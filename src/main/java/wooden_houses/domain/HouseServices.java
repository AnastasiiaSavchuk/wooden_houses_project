package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Data
@Entity
@Table(name = "house_service")
@AllArgsConstructor
@NoArgsConstructor
public class HouseServices {

    @Id
    @Column(name = "service_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "name")
    private String name;

    @Lob
    @Column(name = "description")
    private String description;

    @Lob
    @Column(name = "part_1")
    private String part1;

    @Lob
    @Column(name = "part_2")
    private String part2;

    @Lob
    @Column(name = "part_3")
    private String part3;

    @Lob
    @Column(name = "part_4")
    private String part4;

    public HouseServices(String name, String description, String part1, String part2, String part3, String part4) {
        this.name = name;
        this.description = description;
        this.part1 = part1;
        this.part2 = part2;
        this.part3 = part3;
        this.part4 = part4;
    }
}