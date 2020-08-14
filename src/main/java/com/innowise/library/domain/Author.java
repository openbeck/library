package com.innowise.library.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "author")
@Data
@NoArgsConstructor
public class Author {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "b_day")
    private LocalDate birthDay;

    @ManyToMany(mappedBy = "authors")
    private Set<Book> books = new HashSet<>();
}
