package ufpr.tads.monitorusuario.api.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import ufpr.tads.monitorusuario.api.model.Navegacao;

public interface NavegacaoRepository extends MongoRepository<Navegacao, String> {

}
