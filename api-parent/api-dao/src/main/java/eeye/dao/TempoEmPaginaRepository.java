package eeye.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import eeye.model.TempoEmPagina;

public interface TempoEmPaginaRepository extends MongoRepository<TempoEmPagina, String> {

}
