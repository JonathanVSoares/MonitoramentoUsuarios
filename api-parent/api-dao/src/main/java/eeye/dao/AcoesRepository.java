package eeye.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import eeye.model.Acao;

public interface AcoesRepository extends MongoRepository<Acao, String> {

}
