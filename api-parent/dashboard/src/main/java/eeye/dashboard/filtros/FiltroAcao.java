package eeye.dashboard.filtros;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;

import com.mongodb.BasicDBObject;
import com.mongodb.BasicDBObjectBuilder;

import eeye.model.Navegacao;

@Component
public class FiltroAcao implements FiltroMetrica {

	@Autowired
	MongoTemplate mongoTemplate;

	public void filtrar(List<Navegacao> navegacoes, Date dataFim, Date dataInicio, String... args) {
		for (String arg : args) {
			BasicDBObject queryPesquisas = new BasicDBObject();
			queryPesquisas.put("horario", BasicDBObjectBuilder.start("$gte", dataFim).add("$lt", dataInicio).get());
			queryPesquisas.put("tipo", arg.toLowerCase());
			List<String> usersPesquisas = mongoTemplate.getCollection("acoes").distinct("sessao", queryPesquisas);

			navegacoes.removeIf((navegacao) -> {
				return !usersPesquisas.contains(navegacao.getSessao());
			});
		}
	}
}
