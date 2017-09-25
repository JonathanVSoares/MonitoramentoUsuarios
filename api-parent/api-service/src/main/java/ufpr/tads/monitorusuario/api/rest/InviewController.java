package ufpr.tads.monitorusuario.api.rest;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ufpr.tads.monitorusuario.api.dao.InviewRepository;
import ufpr.tads.monitorusuario.api.helpers.SessaoHelper;
import ufpr.tads.monitorusuario.api.model.Inview;

@RequestMapping("/inview")
@RestController
public class InviewController {

	@Resource
	private InviewRepository inviewRepository;
	
	@Autowired
	private SessaoHelper sessaoHelper;

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> regInviews(@RequestBody List<Inview> inviewList){
		sessaoHelper.incluirSessaoAtual(inviewList);
		inviewRepository.save(inviewList);

		return new ResponseEntity<>(HttpStatus.OK);
	}
}
