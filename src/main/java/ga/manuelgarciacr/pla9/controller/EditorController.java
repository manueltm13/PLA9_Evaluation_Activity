package ga.manuelgarciacr.pla9.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/editor")
public class EditorController {
	@GetMapping("/")
	public String inicio() {
		return "editor";
	}
}