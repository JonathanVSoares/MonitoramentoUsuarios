package ufpr.tads.monitorusuario.api.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/status")
public class StatusController {

    @RequestMapping("/")
    public String greeting(@RequestParam(value="name", defaultValue="Stranger") String name) {
    	return "Hey "+name+", our Service is up and running!";
    }
}
