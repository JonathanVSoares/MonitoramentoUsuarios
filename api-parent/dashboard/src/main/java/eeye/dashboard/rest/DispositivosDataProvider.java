package eeye.dashboard.rest;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import eeye.dao.NavegacaoRepository;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Navegacao;
import eeye.model.TipoDispositivo;

@RestController
@RequestMapping("/dashboardData/dispositivos")
public class DispositivosDataProvider {

	@Autowired
	private NavegacaoRepository repo;

	@RequestMapping(method = RequestMethod.GET, value = "/totais")
	public ResponseEntity<Map<TipoDispositivo, Integer>> porcentagemDispositivos(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoesDesktop = repo.findByTipoDispositivoAndHorarioBetween(TipoDispositivo.DESKTOP,
				dataFim, dataInicio);
		List<Navegacao> navegacoesTablet = repo.findByTipoDispositivoAndHorarioBetween(TipoDispositivo.TABLET, dataFim,
				dataInicio);
		List<Navegacao> navegacoesCelular = repo.findByTipoDispositivoAndHorarioBetween(TipoDispositivo.CELULAR,
				dataFim, dataInicio);

		List<Navegacao> navegacoesNotebook = repo.findByTipoDispositivoAndHorarioBetween(TipoDispositivo.NOTEBOOK,
				dataFim, dataInicio);

		navegacoesDesktop.addAll(navegacoesNotebook);

		Map<TipoDispositivo, Integer> totais = new HashMap<>();
		incluirTotaisUsuariosPorDispositivo(navegacoesDesktop, TipoDispositivo.DESKTOP, totais);
		incluirTotaisUsuariosPorDispositivo(navegacoesTablet, TipoDispositivo.TABLET, totais);
		incluirTotaisUsuariosPorDispositivo(navegacoesCelular, TipoDispositivo.CELULAR, totais);

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	private void incluirTotaisUsuariosPorDispositivo(List<Navegacao> navs, TipoDispositivo tipo,
			Map<TipoDispositivo, Integer> totais) {
		Set<String> usuariosContabilizados = new HashSet<>();
		navs.forEach((nav) -> {
			String user = nav.getUser();
			if (usuariosContabilizados.contains(user)) {
				return;
			}
			usuariosContabilizados.add(user);

			totais.merge(tipo, 1, (a, b) -> a + b);
		});
		if (totais.get(tipo) == null) {
			totais.put(tipo, 0);
		}
	}
}
