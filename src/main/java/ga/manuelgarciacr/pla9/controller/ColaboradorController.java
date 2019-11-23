package ga.manuelgarciacr.pla9.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ColaboradorController {
	@GetMapping("/")
	public String inicio() {
		return "colaborador";
	}
}