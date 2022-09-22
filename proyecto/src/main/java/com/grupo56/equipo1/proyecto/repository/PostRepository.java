package com.grupo56.equipo1.proyecto.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.grupo56.equipo1.proyecto.model.Post;

@Repository
public interface PostRepository extends JpaRepository<Post, Long>{

    
}