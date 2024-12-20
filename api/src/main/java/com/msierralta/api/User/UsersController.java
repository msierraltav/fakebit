package com.msierralta.api.User;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import lombok.RequiredArgsConstructor;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import java.util.Map;
import java.util.HashMap;

@RestController
@RequestMapping("/users")
@RequiredArgsConstructor
public class UsersController {

    private final UsersService usersService;
    private Map<Integer, Long> deletionRequests = new HashMap<>();

    @PostMapping
    public void createUser(@RequestBody Users user){
        usersService.createUser(user);
    }

    @GetMapping
    public List<Users> getAllUsers() {
        return usersService.getAllUsers();
    }

    @GetMapping("/{id}")
    public Users getUserById(@PathVariable Integer id){
        return usersService.getUserById(id);
    }

    @PostMapping("/{id}")
    public void updateUser(@RequestBody Users user){
        usersService.updateUser(user);
    }

    @PostMapping("/delete/{id}")
    public String deleteUser(@PathVariable Integer id) {
        Long lastRequest = deletionRequests.get(id);
        long currentTime = System.currentTimeMillis();
        
        if (lastRequest == null) {
            deletionRequests.put(id, currentTime);
            return "Please confirm deletion by calling this endpoint again within 1 minute";
        }

        if (currentTime - lastRequest <= 60000) {
            deletionRequests.remove(id);
            usersService.deleteUser(id);
            return "User successfully deleted";
        } else {
            deletionRequests.put(id, currentTime);
            return "Previous request expired. Please confirm deletion by calling this endpoint again within 1 minute";
        }
    }

}
