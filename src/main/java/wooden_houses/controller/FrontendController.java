package wooden_houses.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import wooden_houses.service.impl.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class FrontendController {

    @Autowired
    private AboutCompanyServiceImpl companyService;
    @Autowired
    private ContactInfoServiceImpl contactService;
    @Autowired
    private HouseConstructionServiceImpl constructionService;
    @Autowired
    private HouseServiceImpl houseService;
    @Autowired
    private HouseImageServiceImpl imageService;
    @Autowired
    private HouseServicesServiceImpl servicesService;


    @GetMapping("/frontend/houses")
    public String showAllHouse(HttpServletRequest request) {
        request.setAttribute("house", houseService.findAll());
        request.setAttribute("mode", "HOUSE_VIEW");
        return "dream-house";
    }

    @GetMapping("/frontend/house/{id}")
    public String showHouseById(HttpServletRequest request, @PathVariable("id") int id) {
        request.setAttribute("house", houseService.findById(id));
        request.setAttribute("mode", "HOUSE_VIEW");
        return "houseById";
    }


    @GetMapping("/frontend/company")
    public String showAllCompanyInfo(HttpServletRequest request) {
        request.setAttribute("infoAboutCompany", companyService.findAll());
        request.setAttribute("mode", "COMPANY_VIEW");
        return "company";
    }

    @GetMapping("/frontend/contacts")
    public String showAllContactInfo(HttpServletRequest request) {
        request.setAttribute("contactInfo", contactService.findAll());
        request.setAttribute("mode", "CONTACT_VIEW");
        return "contact";
    }

    @GetMapping("/frontend/building_a_house")
    public String showAllConstructionInfo(HttpServletRequest request) {
        request.setAttribute("houseConstructionInfo", constructionService.findAll());
        request.setAttribute("mode", "BUILDING_VIEW");
        return "building";
    }

    @GetMapping("/frontend/gallery")
    public String showAllImages(HttpServletRequest request) {
        request.setAttribute("houseImages", imageService.findAll());
        request.setAttribute("mode", "GALLERY_VIEW");
        return "gallery";
    }

    @GetMapping("/frontend/service")
    public String showAllServices(HttpServletRequest request) {
        request.setAttribute("houseService", servicesService.findAll());
        request.setAttribute("mode", "SERVICE_VIEW");
        return "service";
    }
}
