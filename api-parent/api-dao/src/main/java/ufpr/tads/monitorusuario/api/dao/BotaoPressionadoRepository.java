package ufpr.tads.monitorusuario.api.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import ufpr.tads.monitorusuario.api.model.BotaoPressionado;

public interface BotaoPressionadoRepository extends MongoRepository<BotaoPressionado, String> {

}
