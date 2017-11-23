package eeye.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import eeye.model.Acao;

public interface AcoesRepository extends MongoRepository<Acao, String> {
	List<Acao> findByHorarioBetweenAndTipo(Date diaFim, Date diaInicio, String tipo);
}
