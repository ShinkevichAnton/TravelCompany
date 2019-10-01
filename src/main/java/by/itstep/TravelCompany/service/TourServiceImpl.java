package by.itstep.TravelCompany.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import by.itstep.TravelCompany.dao.TourDao;
import by.itstep.TravelCompany.model.Tour;

@Service
public class TourServiceImpl implements TourService {

	@Autowired
	private TourDao tourDao;

	@Override
	public Tour save(Tour tour) {
		return tourDao.save(tour);
	}

	@Override
	public Optional<Tour> findById(Long id) {
		return tourDao.findById(id);
	}

	@Override
	public Iterable<Tour> findAll() {
		return tourDao.findAll();
	}

	@Override
	public void deleteById(Long id) {
		tourDao.deleteById(id);

	}

	@Override
	public List<Tour> findByCountryAndPrice(Example<Tour> example) {
		return tourDao.findAll(example);
	}

}
