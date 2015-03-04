package com.cts.cmpmwizard.repositories;


import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.cts.cmpmwizard.beans.User;

@Repository("mongoRepository")
public interface UserRepository extends MongoRepository<User, String>{}