package com.example.demo;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
public interface UserDao extends CrudRepository<UserData, Integer> {
}
