package com.example.nosqltest.controller;

import com.example.nosqltest.document.UserDocument;
import com.example.nosqltest.dto.UserDTO;
import com.example.nosqltest.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Log4j2
@RestController
public class MainController {

    @Autowired
    private UserService userService;

    @GetMapping("/user")
    public ResponseEntity<List<UserDocument>> findAllUser() {
        log.info("findAllUser!!!");
        List<UserDocument> resultUsers = userService.findAllUser();
        log.info("resultUser : " + resultUsers);

        return ResponseEntity
                .status(HttpStatus.ACCEPTED)
                .body(resultUsers);
    }

    @GetMapping("/user/{uid}")
    public ResponseEntity<Optional<UserDocument>> findUser(@PathVariable("uid") String uid) {
        log.info("findUser!!!");
        log.info("uid : " + uid);
        Optional<UserDocument> resultUser = userService.findUser(uid);
        log.info("resultUser : " + resultUser);

        return ResponseEntity
                .ok().body(resultUser);
    }

    @PostMapping("/user")
    public ResponseEntity<UserDocument> insertUser(@RequestBody UserDocument user) {
        log.info("insertUser!!!");
        log.info("user : " + user);
        UserDocument resultUser = userService.insertUser(user);
        log.info("resultUser : " + resultUser);

        return ResponseEntity.ok().body(resultUser);

    }

    @PutMapping("/user")
    public ResponseEntity<UserDocument> updateUser(UserDocument user) {
        log.info("updateUser!!!");
        log.info("user : " + user);

        String id = userService.findUser(user.getUid()).get().get_id();
        user.set_id(id);

        UserDocument resultUser = userService.updateUser(user);
        log.info("resultUser : " + resultUser);

        return ResponseEntity.ok().body(resultUser);
    }

    @DeleteMapping("/user/{uid}")
    public ResponseEntity<Optional<UserDocument>> deleteUser(@PathVariable("uid") String uid) {
        log.info("deleteUser!!!");
        log.info("uid : " + uid);
        Optional<UserDocument> resultUser = userService.deleteUser(uid);
        log.info("resultUser : " + resultUser);

        return ResponseEntity.ok().body(resultUser);
    }

}
