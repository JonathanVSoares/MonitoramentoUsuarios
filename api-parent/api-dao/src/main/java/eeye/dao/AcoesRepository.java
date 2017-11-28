package eeye.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import eeye.model.Acao;

public interface AcoesRepository extends MongoRepository<Acao, String> {
	List<Acao> findByHorarioBetween(Date diaFim, Date diaInicio);
	List<Acao> findByHorarioBetweenAndTipo(Date diaFim, Date diaInicio, String tipo);
	List<Acao> findByHorarioBetweenAndTipoOrTipo(Date diaFim, Date diaInicio, String tipo, String tipo2);
	List<Acao> findByHorarioBetweenAndTipoAndIdElemento(Date diaFim, Date diaInicio, String tipo, String idElemento);
}
