package eeye.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import eeye.model.Navegacao;
import eeye.model.TipoDispositivo;

public interface NavegacaoRepository extends MongoRepository<Navegacao, String> {
	Navegacao findByUserAndHorarioGreaterThan(String user, Date horario);
	List<Navegacao> findByTipoDispositivoAndHorarioBetween(TipoDispositivo tipo, Date diaFim, Date diaInicio);
	List<Navegacao> findByHorarioBetween(Date diaFim, Date diaInicio);
	List<Navegacao> findByHorarioBetweenAndPaisNot(Date diaFim, Date diaInicio, String pais);
}
