package by.itstep.TravelCompany.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import by.itstep.TravelCompany.model.Tour;
import by.itstep.TravelCompany.service.TourService;

@Controller
public class TravelCompanyController {

	@Autowired
	private TourService tourService;

	@RequestMapping("/")
	public ModelAndView start() {

		return new ModelAndView("start");
	}

	@RequestMapping("/about")
	public ModelAndView about() {
		return new ModelAndView("about");
	}

	@RequestMapping("/tour")
	public ModelAndView tour(@RequestParam(required = false) String country,
			@RequestParam(required = false) Integer price) {

		/*Tour tour1 = new Tour();
		tour1.setAmountOfDays(5);
		tour1.setCountry("Голландия");
		tour1.setDescription("Минск - Амстердам - Минск");
		tour1.setImgUrl("holland.jpg");
		tour1.setName("Яркий Амстердам");
		tour1.setPhone("+375 (29) 55-000-11");
		tour1.setPrice(80);

		Tour tour2 = new Tour();
		tour2.setAmountOfDays(10);
		tour2.setCountry("Чехия");
		tour2.setDescription("Минск - Прага - Минск");
		tour2.setImgUrl("czechRepublic.jpg");
		tour2.setName("Сказочная Прага");
		tour2.setPhone("+375 (29) 55-000-11");
		tour2.setPrice(70);

		Tour tour3 = new Tour();
		tour3.setAmountOfDays(15);
		tour3.setCountry("Италия");
		tour3.setDescription("Минск - Рим - Минск");
		tour3.setImgUrl("italy.jpg");
		tour3.setName("Древний Рим");
		tour3.setPhone("+375 (29) 55-000-11");
		tour3.setPrice(180);

		Tour tour4 = new Tour();
		tour4.setAmountOfDays(7);
		tour4.setCountry("Франция");
		tour4.setDescription("Минск - Париж - Минск");
		tour4.setImgUrl("france.jpg");
		tour4.setName("Парижские каникулы");
		tour4.setPhone("+375 (29) 55-000-11");
		tour4.setPrice(150);

		tourService.save(tour1);
		tourService.save(tour2);
		tourService.save(tour3);
		tourService.save(tour4);*/

		Tour tour = new Tour();
		tour.setCountry(country == null || country.isEmpty() ? null : country);
		tour.setPrice(price);
		ModelAndView modelAndView = new ModelAndView("tour");
		modelAndView.addObject("tour", tourService.findByCountryAndPrice(Example.of(tour)));
		return modelAndView;

	}

	@RequestMapping("/admin")
	public ModelAndView admin() {

		ModelAndView modelAndView = new ModelAndView("admin");
		modelAndView.addObject("tour", tourService.findAll());
		return modelAndView;
	}

	@RequestMapping("/{id}")
	public ModelAndView info(@PathVariable Long id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("info");
		Optional<Tour> optional = tourService.findById(id);
		if (optional.isPresent()) {
			modelAndView.addObject("tour", optional.get());
		}
		return modelAndView;

	}

	@RequestMapping(path = "/add", method = RequestMethod.GET)
	public ModelAndView addPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("add");
		return modelAndView;
	}

	@RequestMapping(path = "/add", method = RequestMethod.POST)
	public ModelAndView add(@RequestParam String name, @RequestParam String country, @RequestParam String imgUrl,
			@RequestParam String description, @RequestParam Integer price, @RequestParam Integer amountOfDays) {

		Tour tour = new Tour();
		tour.setAmountOfDays(amountOfDays);
		tour.setCountry(country);
		tour.setDescription(description);
		tour.setImgUrl(imgUrl);
		tour.setName(name);
		tour.setPrice(price);
		tourService.save(tour);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/admin");
		return modelAndView;
	}

	@RequestMapping(path = "/{id}/update", method = RequestMethod.GET)
	public ModelAndView editPage(@PathVariable Long id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("edit");
		Optional<Tour> optional = tourService.findById(id);
		if (optional.isPresent()) {
			modelAndView.addObject("tour", optional.get());
		}
		return modelAndView;
	}

	@RequestMapping(path = "/edit", method = RequestMethod.POST)
	public ModelAndView edit(@ModelAttribute Tour tour, BindingResult result) {
		if (result.hasErrors()) {
			return new ModelAndView("start");
		}
		tourService.save(tour);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/admin");
		return modelAndView;
	}

	@RequestMapping("/{id}/delete")
	public ModelAndView delete(@PathVariable Long id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/admin");
		tourService.deleteById(id);
		return modelAndView;

	}

}
