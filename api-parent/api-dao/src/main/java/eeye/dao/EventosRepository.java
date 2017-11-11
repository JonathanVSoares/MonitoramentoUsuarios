package eeye.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import eeye.model.Evento;

public interface EventosRepository extends MongoRepository<Evento, String> {
}
