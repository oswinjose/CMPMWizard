package com.cts.cmpmwizard.repositories;


import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cts.cmpmwizard.beans.User;

@Repository("mongoRepository")
public interface UserRepository extends CrudRepository<User, String>{}