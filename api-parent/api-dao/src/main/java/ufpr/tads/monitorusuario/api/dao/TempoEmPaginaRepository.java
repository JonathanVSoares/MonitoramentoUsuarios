package ufpr.tads.monitorusuario.api.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import ufpr.tads.monitorusuario.api.model.TempoEmPagina;

public interface TempoEmPaginaRepository extends MongoRepository<TempoEmPagina, String> {

}
