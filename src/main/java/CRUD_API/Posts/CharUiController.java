package CRUD_API.Posts;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller

public class CharUiController {

    private final CharService charService;

    public CharUiController(CharService charService){
        this.charService = charService;
    }

    @GetMapping("/")
    public String home(){
        return "redirect:/characters";
    }

    @GetMapping("/about")
    public String about(){
    return "about";
    }

    @GetMapping("/details")
    public String showAllCharacterDetails(Model model) {
        model.addAttribute("characterList", charService.getAllCharacters());
        return "character-details-all";
    }

    @GetMapping("/characters")
    public String showCharacterList(
        @RequestParam(required = false, defaultValue = "") String name,
        Model model) {
        model.addAttribute("characterList", name.isBlank()
                ? charService.getAllCharacters()
                : charService.getCharactersByName(name));
        model.addAttribute("searchName", name);
        return "character-list";
    }

    @GetMapping("/characters/{id}")
    public String showCharacterDetails(@PathVariable long id, Model model) {
        Character character = charService.getCharacterById(id);
        if (character == null) {
            return "redirect:/characters";
        }
        model.addAttribute("character", character);
        return "character-details";
    }

    @GetMapping("/createForm")
    public String showCreateForm(Model model) {
        model.addAttribute("character", new Character());
        return "character-create";
    }

    @PostMapping("/create")
    public String createCharacter(@ModelAttribute Character character) {
        Character savedCharacter = charService.createCharacter(character);
        return "redirect:/characters/" + savedCharacter.getId();
    }

    @GetMapping("/updateForm/{id}")
    public String showUpdateForm(@PathVariable long id, Model model) {
        Character character = charService.getCharacterById(id);
        if (character == null) {
            return "redirect:/characters";
        }
        model.addAttribute("character", character);
        return "character-update";
    }

    @PostMapping("/update")
    public String updateCharacter(@ModelAttribute Character character) {
        Character updatedCharacter = charService.updateCharacter(character.getId(), character);
        if (updatedCharacter == null) {
            return "redirect:/characters";
        }
        return "redirect:/characters/" + updatedCharacter.getId();
    }

    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable long id) {
        charService.deleteCharacter(id);
        return "redirect:/characters";
    }
}

