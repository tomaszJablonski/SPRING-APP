package com.app.springapp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "DEADLINE")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date deadline;
    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "COLOR")
    private String color;
    @Column(name = "CREATION_DATE")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date creationDate;

    @ManyToOne
    private Person person;

}
