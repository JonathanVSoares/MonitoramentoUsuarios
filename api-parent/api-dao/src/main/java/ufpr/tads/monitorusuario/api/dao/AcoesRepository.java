package ufpr.tads.monitorusuario.api.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import ufpr.tads.monitorusuario.api.model.Acao;

public interface AcoesRepository extends MongoRepository<Acao, String> {

}
