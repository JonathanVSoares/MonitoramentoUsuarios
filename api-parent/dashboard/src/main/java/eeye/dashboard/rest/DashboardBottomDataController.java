package eeye.dashboard.rest;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import eeye.dao.AcoesRepository;
import eeye.dao.NavegacaoRepository;
import eeye.dashboard.domain.TempoDuracaoSessao;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Acao;
import eeye.model.Navegacao;

@RestController
@RequestMapping("/dashboardData/bottomData")
public class DashboardBottomDataController {
	@Autowired
	private AcoesRepository repo;

	@Autowired
	private NavegacaoRepository navegacaoRepository;

	@RequestMapping(method = RequestMethod.GET, value = "/mediaDuracao")
	public ResponseEntity<Integer> mediaDuracao() {
		Date dataInicio = DateUtils.pegarDataMenosXDias(-1);
		Date dataFim = DateUtils.pegarDataMenosXDias(6);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);

		Map<String, TempoDuracaoSessao> duracoes = new HashMap<>();

		navegacoes.forEach((navegacao) -> {
			TempoDuracaoSessao duracao;
			String sessao = navegacao.getSessao();
			if (duracoes.containsKey(sessao)) {
				duracao = duracoes.get(sessao);
			} else {
				duracao = new TempoDuracaoSessao();
				duracoes.put(sessao, duracao);
			}

			Calendar cal = Calendar.getInstance();
			cal.setTime(navegacao.getHorario());

			duracao.verificarComecoFimSessao(cal);
		});

		Iterator<Map.Entry<String, TempoDuracaoSessao>> it = duracoes.entrySet().iterator();
		int totalDuracoes = 0;
		int totalSessoes = duracoes.size();
		while (it.hasNext()) {
			totalDuracoes += it.next().getValue().calcularDuracaoEmMin();
		}

		int media = totalDuracoes / totalSessoes;

		return new ResponseEntity<Integer>(media, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/produtosWishlist")
	public ResponseEntity<Integer> wishlist() {
		Date dataInicio = DateUtils.pegarDataMenosXDias(-1);
		Date dataFim = DateUtils.pegarDataMenosXDias(6);

		List<Acao> navegacoes = repo.findByHorarioBetweenAndTipo(dataFim, dataInicio, "wishlist");

		return new ResponseEntity<Integer>(navegacoes.size(), HttpStatus.OK);
	}
}
