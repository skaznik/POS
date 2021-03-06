package pl.edu.wszib.pos.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name = "history")
public class History {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private Long Id;
//    // id zgłoszenia
    private Long zId;
    //data zdarzenia
    private Date hData;
    //rodzaj operacji
    private String hDescription;
    //kto wykonał operację
    private String hUser;
//    @ManyToOne(cascade = CascadeType.ALL)
//    @JoinColumn(name = "zgloszenie_id")
//    private Zgloszenie zgloszenie;

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public Date gethData() {
        return hData;
    }

    public void sethData(Date hData) {
        this.hData = hData;
    }

    public String gethDescription() {
        return hDescription;
    }

    public void sethDescription(String hDescription) {
        this.hDescription = hDescription;
    }

    public String gethUser() {
        return hUser;
    }

    public void sethUser(String hUser) {
        this.hUser = hUser;
    }
//
    public Long getzId() {
        return zId;
    }

    public void setzId(Long zId) {
        this.zId = zId;
    }


    public History(Long Id, Date hData, String hDescription, String hUser, Long zId) {
        this.Id = Id;
        this.hData = hData;
        this.hDescription = hDescription;
        this.hUser = hUser;
        this.zId = zId;
    }

    public History() {
    }
}
