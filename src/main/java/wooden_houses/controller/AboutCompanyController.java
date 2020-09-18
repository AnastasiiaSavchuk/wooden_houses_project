package wooden_houses.controller;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import wooden_houses.domain.AboutCompany;
import wooden_houses.service.impl.AboutCompanyServiceImpl;

import java.util.List;
import java.util.Objects;

import static javax.servlet.http.HttpServletResponse.*;

@RestController
public class AboutCompanyController {

    @Autowired
    private AboutCompanyServiceImpl service;
    private static final Logger log = Logger.getLogger(AboutCompanyController.class);

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_CONFLICT, message = "Information about company was already created!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input!")
    })
    @PostMapping("/createInfoAboutCompany")
    public ResponseEntity<?> createNewInfoAboutCompany(@RequestBody AboutCompany company) {
        if (service.isExists(company.getId())) {
            log.error("Information : " + company + ",  with id " + company.getId() + " already exists!");
            return new ResponseEntity<>((HttpStatus.CONFLICT));
        }
        service.save(company);
        log.info("Information : " + company + " was created!");
        return new ResponseEntity<>(company, HttpStatus.CREATED);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the information about company in the database!"),
    })
    @GetMapping("/infoAboutCompany/{id}")
    public ResponseEntity<?> readInfoAboutCompanyById(@PathVariable("id") int id) {
        log.info("Looking for information about company by id " + id);
        AboutCompany company = service.findById(id);
        if (Objects.isNull(company)) {
            log.error("Information about company with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("Information about company with id " + id + " : " + company);
        return new ResponseEntity<>(company, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found any information about company in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input!")
    })
    @ApiOperation(value = "Retrieves all information about company!",
            response = AboutCompany.class,
            responseContainer = "List")
    @GetMapping("/infoAboutCompany")
    public ResponseEntity<List<AboutCompany>> readAllInfoAboutCompany() {
        log.info("Looking for all houses from database!");
        List<AboutCompany> houseList = service.findAll();
        if (houseList.isEmpty()) {
            log.info("Information about company not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("All information about company : " + houseList);
        return new ResponseEntity<>(houseList, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the information about company in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input")
    })
    @PutMapping("/updateInfoAboutCompany/{id}")
    public ResponseEntity<?> updateHouseById(@RequestBody AboutCompany company, @PathVariable("id") int id) {
        log.info("Updating the information about company with id : " + id);
        if (!service.isExists(id)) {
            log.error("Information about company with id " + company.getId() + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        company.setId(id);
        service.update(company);
        log.info("Information about company was updated into" + company);
        return new ResponseEntity<>(company, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found the information about company in the database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found information about company in the database!"),
    })
    @DeleteMapping("deleteInfoAboutCompany/{id}")
    public ResponseEntity<?> deleteInfoAboutCompanyById(@PathVariable("id") int id) {
        log.info("Deleting the information about company with id " + id);
        if (Objects.isNull(service.findById(id))) {
            log.error("Information about company with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("Information about company with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}