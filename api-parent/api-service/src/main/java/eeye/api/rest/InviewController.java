package eeye.api.rest;

import eeye.api.helpers.SessaoHelper;
import eeye.dao.InviewRepository;
import eeye.model.Inview;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/inview")
@RestController
public class InviewController {

	@Autowired
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
