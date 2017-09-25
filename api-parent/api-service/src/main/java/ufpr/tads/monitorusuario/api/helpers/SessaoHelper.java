package ufpr.tads.monitorusuario.api.helpers;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ufpr.tads.monitorusuario.api.dao.EventosRepository;
import ufpr.tads.monitorusuario.api.model.Evento;

@Component
public class SessaoHelper {

	@Autowired
	private EventosRepository repo;

	public String getSessao(String user) {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusMinutes(10);
		
		Date desde10Min = Date.from(date.toInstant());
		
		Evento evento = repo.findByUserAndHorarioGreaterThan(user, desde10Min);
		
		// se houve evento em 10 min, há sessão atual
		if (evento == null) {
			return user + LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddhhmmss"));
		} else {
			return evento.getSessao();
		}
	}
	
	public void incluirSessaoAtual(Evento evento) {
		if (evento == null)
			return;
		
		evento.setSessao(getSessao(evento.getUser()));
	}
	
	public <T extends Evento> void incluirSessaoAtual(List<T> lista) {
		if (lista.isEmpty())
			return;
		
		String sessao = getSessao(lista.get(0).getUser());
		
		for(Evento evento : lista) {
			evento.setSessao(sessao);
		}
	}
}
