package ufpr.tads.monitorusuario.api.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import ufpr.tads.monitorusuario.api.model.Inview;

public interface InviewRepository extends MongoRepository<Inview, String> {

}
