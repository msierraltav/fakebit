package com.msierralta.api.User;
import java.util.List;

import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class UsersService {

    private final UsersRepository userRepository;

    public void createUser(Users user){
        userRepository.save(user);
    }

    public List<Users> getAllUsers(){
        return userRepository.findAll();
    }

    public Users getUserById(Integer id){
        return userRepository.findById(id).orElse(null);
    }

    public void updateUser(Users user){
        userRepository.save(user);
    }

    public void deleteUser(Integer id){
        userRepository.deleteById(id);
    }

}
