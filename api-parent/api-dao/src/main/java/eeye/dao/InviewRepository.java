package eeye.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import eeye.model.Inview;

public interface InviewRepository extends MongoRepository<Inview, String> {

}
