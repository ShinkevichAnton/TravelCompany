package by.itstep.TravelCompany.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import by.itstep.TravelCompany.model.Tour;

public interface TourDao extends JpaRepository<Tour, Long> {

	public List<Tour> findByCountryAndPrice(String country, String price);

}
