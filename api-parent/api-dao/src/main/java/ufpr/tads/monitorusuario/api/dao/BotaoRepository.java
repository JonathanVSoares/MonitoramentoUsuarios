package ufpr.tads.monitorusuario.api.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import ufpr.tads.monitorusuario.api.model.Botao;

public interface BotaoRepository extends MongoRepository<Botao, String> {

}
