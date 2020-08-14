package com.innowise.library.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "book")
@Data
@NoArgsConstructor
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "publishing_house")
    private String publishingHouse;

    @Column(name = "year")
    private LocalDate year;

    @ManyToMany
    @JoinTable(name = "author_book",
            joinColumns = { @JoinColumn(name = "book_id") },
            inverseJoinColumns = { @JoinColumn(name = "author_id") })
    private Set<Author> authors = new HashSet<>();

}
