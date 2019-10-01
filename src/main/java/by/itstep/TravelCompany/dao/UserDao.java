package by.itstep.TravelCompany.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import by.itstep.TravelCompany.model.User;

public interface UserDao extends JpaRepository<User, Long> {

	public Optional<User> findByLogin(String login);

}
