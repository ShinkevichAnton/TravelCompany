package by.itstep.TravelCompany.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.itstep.TravelCompany.dao.UserDao;
import by.itstep.TravelCompany.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public Optional<User> findByLogin(String login) {
		return userDao.findByLogin(login);
	}

	@Override
	public void save(User user) {
		userDao.save(user);

	}

}
