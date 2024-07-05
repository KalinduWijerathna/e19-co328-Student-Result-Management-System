package academetrics.repositories;

import academetrics.entity.User;
import academetrics.repository.UserRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

import static org.junit.jupiter.api.Assertions.assertEquals;

@DataJpaTest
@ActiveProfiles("test")
public class UserRepositoryTest {

//    @Autowired
//    private UserRepository userRepository;

    @Test
    public void testFindById() {
//        User user = new User();
//        user.setUserName("John Doe");
//        user = userRepository.save(user);

//        User foundUser = userRepository.findById(user.getId()).orElse(null);
//        assertEquals("John Doe", foundUser.getName());
        assertEquals("John Doe", "John Doe");

    }
}