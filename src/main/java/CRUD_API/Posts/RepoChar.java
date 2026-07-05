package CRUD_API.Posts;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepoChar extends JpaRepository<Character, Long> {
  List<Character> findByNameContainingIgnoreCase(String name);

  List<Character> findByStatusIgnoreCase(String Status);

}
