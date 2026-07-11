package CRUD_API.Posts;


import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/characters")
public class CharController {

    private final CharService charService;

    
    public CharController(CharService charService) {
        this.charService = charService;
    }

    // GET all Char
    @GetMapping
    public List<Character> getAllCharacters() {
        return charService.getAllCharacters();
    }

    // GET a single Char
    @GetMapping("/{id}")
    public Character getCharacterById(@PathVariable long id) {
        return charService.getCharacterById(id);
    }

    // POST a new Char
    @PostMapping
    public Character createCharacter(@RequestBody Character character) {
        return charService.createCharacter(character);
    }

    // PUT to update an existing Char
    @PutMapping("/{id}")
    public Character updateCharacter(@PathVariable long id, @RequestBody Character updatedCharacter) {
        return charService.updateCharacter(id, updatedCharacter);
    }

    // DELETE Char
    @DeleteMapping("/{id}")
    public boolean deleteCharacter(@PathVariable long id) {
        return charService.deleteCharacter(id);
    }

    // GET by name
    @GetMapping("/search/name")
    public List<Character> getCharactersByName(@RequestParam String name) {
        return charService.getCharactersByName(name);
    }

    // GET by status
    @GetMapping("/search/status")
    public List<Character> getCharactersByStatus(@RequestParam String status) {
        return charService.getCharactersByStatus(status);
    }
}
