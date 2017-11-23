package eeye.dashboard.rest;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import eeye.dao.NavegacaoRepository;
import eeye.dashboard.domain.NumAcessoHorarioSemana;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Navegacao;

@RestController
@RequestMapping("/dashboardData")
public class GrafHorarioDataProvider {
	@Autowired
	private NavegacaoRepository navegacaoRepository;

	@RequestMapping(method = RequestMethod.GET, value = "/horario")
	public ResponseEntity<List<NumAcessoHorarioSemana>> dadosHorarioUltimosDias(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> eventos = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);

		List<NumAcessoHorarioSemana> acessos = new ArrayList<>();
		
		Calendar c = Calendar.getInstance();
		for (Navegacao evento : eventos) {
			Date dataEvento = evento.getHorario();
			c.setTime(dataEvento);
			int diaDaSemana = c.get(Calendar.DAY_OF_WEEK) - 1;
			int horarioDia = c.get(Calendar.HOUR_OF_DAY);
			
			String sessaoHorario = pegarSessaoHorario(horarioDia);
			
			NumAcessoHorarioSemana numAcessos = new NumAcessoHorarioSemana();
			numAcessos.setDiaDaSemana(diaDaSemana);
			numAcessos.setHorario(sessaoHorario);
			
			if (acessos.contains(numAcessos)) {
				numAcessos = acessos.get(acessos.indexOf(numAcessos));
				numAcessos.setNumeroAcessos(numAcessos.getNumeroAcessos() + 1);
			} else {
				numAcessos.setNumeroAcessos(1);
				acessos.add(numAcessos);
			}
		}
		
		return new ResponseEntity<>(acessos, HttpStatus.OK);
	}

	private String pegarSessaoHorario(int horarioDia) {
		if (horarioDia  < 2) {
			return "00:00";
		} else if (horarioDia < 4) {
			return "02:00";
		} else if (horarioDia < 6) {
			return "04:00";
		} else if (horarioDia < 8) {
			return "06:00";
		} else if (horarioDia < 10) {
			return "08:00";
		} else if (horarioDia < 12) {
			return "10:00";
		} else if (horarioDia < 14) {
			return "12:00";
		} else if (horarioDia < 16) {
			return "14:00";
		} else if (horarioDia < 18) {
			return "16:00";
		} else if (horarioDia < 20) {
			return "18:00";
		} else if (horarioDia < 22) {
			return "20:00";
		} else {
			return "22:00";
		}
	}
}
