package CRUD_API.Posts;

import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class CharService {

    private final RepoChar repoChar;

    public CharService(RepoChar repoChar){
        this.repoChar = repoChar;
    }

    public List<Character> getAllCharacters() {
        return repoChar.findAll();
    }

    public Character getCharacterById(long id) {
        return repoChar.findById(id).orElse(null);
    }

    public Character createCharacter(Character character) {
        return repoChar.save(character);
    }

    public Character updateCharacter(long id, Character updatedCharacter) {
        Character existingCharacter = repoChar.findById(id).orElse(null);
        if (existingCharacter != null) {
            // Kingsguard attributes
            existingCharacter.setName(updatedCharacter.getName());
            existingCharacter.setTitle(updatedCharacter.getTitle());
            existingCharacter.setWeapon(updatedCharacter.getWeapon());
            existingCharacter.setStatus(updatedCharacter.getStatus());
            
            return repoChar.save(existingCharacter);
        }
        return null;
    }

    public boolean deleteCharacter(long id) {
        if (repoChar.existsById(id)) {
            repoChar.deleteById(id);
            return true;
        }
        return false;
    }

    public List<Character> getCharactersByName(String name) {
        return repoChar.findByNameContainingIgnoreCase(name);
    }

    public List<Character> getCharactersByStatus(String status) {
        return repoChar.findByStatusIgnoreCase(status);
    }
}