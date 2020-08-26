package project.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Data
@Entity
@Table(name = "house_technology")
@AllArgsConstructor
@NoArgsConstructor
public class HouseTechnology {

    @Id
    @Column(name = "technology_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "technology_name")
    private String technologyName;

    @Column(name = "technology_type")
    private String technologyType;

    @Lob
    @Column(name = "technology_description")
    private String technologyDescription;

    public HouseTechnology(String technologyName, String technologyType, String technologyDescription) {
        this.technologyName = technologyName;
        this.technologyType = technologyType;
        this.technologyDescription = technologyDescription;
    }
}