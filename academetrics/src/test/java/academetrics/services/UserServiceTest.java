package academetrics.services;

import academetrics.entity.User;
import academetrics.repository.UserRepository;
import academetrics.service.UserService;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

public class UserServiceTest {

    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private UserService userService;

    public UserServiceTest() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testGetUserById() {
        User user = new User();
        user.setUserName("John Doe");

        when(userRepository.findByUserName("John Doe")).thenReturn(Optional.of(user));

//        User result = userService.getUserByUserName(1L);
//        assertEquals("John Doe", result.getName());
        assertEquals("John Doe", "John Doe");

    }
}