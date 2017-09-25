package ufpr.tads.monitorusuario.api.dao;

import java.util.Date;

import org.springframework.data.mongodb.repository.MongoRepository;

import ufpr.tads.monitorusuario.api.model.Evento;

public interface EventosRepository extends MongoRepository<Evento, String> {
	
	Evento findByUserAndHorarioGreaterThan(String user, Date horario);
}
