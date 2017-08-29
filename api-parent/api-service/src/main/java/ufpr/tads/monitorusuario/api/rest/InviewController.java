package ufpr.tads.monitorusuario.api.rest;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ufpr.tads.monitorusuario.api.dao.InviewRepository;
import ufpr.tads.monitorusuario.api.model.Inview;

@RequestMapping("/inview")
@RestController
public class InviewController {

	@Resource
	private InviewRepository inviewRepository;

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> regInviews(@RequestBody List<Inview> inviewList){
//		List<Inview> inviewList = new ArrayList<>(inviewMap.values());
		inviewList = inviewRepository.save(inviewList);

		return new ResponseEntity<>(inviewList, HttpStatus.OK);
	}
}
