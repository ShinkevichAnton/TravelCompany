package by.itstep.TravelCompany.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;

import by.itstep.TravelCompany.model.Tour;

public interface TourService {

	public Tour save(Tour tour);

	Optional<Tour> findById(Long id);

	Iterable<Tour> findAll();

	void deleteById(Long id);

	public List<Tour> findByCountryAndPrice(Example<Tour> example);

}
