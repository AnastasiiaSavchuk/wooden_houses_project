package wooden_houses.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@Table(name = "company_info")
@AllArgsConstructor
@NoArgsConstructor
public class CompanyInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "info_id")
    private int id;

    @Column(name = "info_name")
    private String infoName;

    @Lob
    @Column(name = "info_type")
    private String infoType;

    @Lob
    @Column(name = "info_1")
    private String info1;

    @Lob
    @Column(name = "info_2")
    private String info2;

    @Lob
    @Column(name = "info_3")
    private String info3;

    @Lob
    @Column(name = "info_4")
    private String info4;

    @Lob
    @Column(name = "info_5")
    private String info5;

    @Lob
    @Column(name = "info_6")
    private String info6;

    @Lob
    @Column(name = "info_7")
    private String info7;

    @Lob
    @Column(name = "info_8")
    private String info8;

    public CompanyInfo(String infoName, String infoType, String info1, String info2, String info3, String info4, String info5, String info6, String info7, String info8) {
        this.infoName = infoName;
        this.infoType = infoType;
        this.info1 = info1;
        this.info2 = info2;
        this.info3 = info3;
        this.info4 = info4;
        this.info5 = info5;
        this.info6 = info6;
        this.info7 = info7;
        this.info8 = info8;
    }
}