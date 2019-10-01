package by.itstep.TravelCompany.service;

import java.util.Optional;

import by.itstep.TravelCompany.model.User;

public interface UserService {

	public Optional<User> findByLogin(String login);

	public void save(User user);
}
