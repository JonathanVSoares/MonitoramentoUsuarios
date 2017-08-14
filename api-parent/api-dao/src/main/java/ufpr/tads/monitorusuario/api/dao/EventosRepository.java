package ufpr.tads.monitorusuario.api.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import ufpr.tads.monitorusuario.api.model.Evento;

public interface EventosRepository extends MongoRepository<Evento, String> {

}
