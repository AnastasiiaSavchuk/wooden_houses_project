package wooden_houses.controller;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;
import wooden_houses.domain.House;
import wooden_houses.service.impl.HouseServiceImpl;

import java.util.List;
import java.util.Objects;

import static javax.servlet.http.HttpServletResponse.*;

@RestController
public class HouseController {

    @Autowired
    private HouseServiceImpl service;
    private static final Logger log = Logger.getLogger(HouseController.class);

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_CONFLICT, message = "House was already created!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input!")
    })
    @PostMapping("/createHouse")
    public ResponseEntity<?> createNewHouse(@RequestBody House house, UriComponentsBuilder builder) {
        if (service.isExists(house.getId())) {
            log.error("House with id " + house.getId() + " already exists!" + house);
            return new ResponseEntity<>((HttpStatus.CONFLICT));
        }
        service.save(house);
        log.info(house + " was created!");
        HttpHeaders houseHeaders = new HttpHeaders();
        houseHeaders.setLocation(builder.path("/house/{id}").buildAndExpand(house.getId()).toUri());
        return new ResponseEntity<>(houseHeaders, HttpStatus.CREATED);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house in the database!"),
    })
    @GetMapping("house/{id}")
    public ResponseEntity<?> readHouseById(@PathVariable("id") int id) {
        log.info("Looking for a house by id " + id);
        House house = service.findOne(id);
        if (Objects.isNull(house)) {
            log.error("House with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("House with id " + id + " : " + house);
        return new ResponseEntity<>(house, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found any houses in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all houses!",
            response = House.class,
            responseContainer = "List")
    @GetMapping("/houses")
    public ResponseEntity<List<House>> readAllHouses() {
        log.info("Looking for all houses from database!");
        List<House> houseList = service.findAll();
        if (houseList.isEmpty()) {
            log.info("Records not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("All houses : " + houseList);
        return new ResponseEntity<>(houseList, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input")
    })
    @PutMapping("/updateHouse/{id}")
    public ResponseEntity<?> updateHouseById(@RequestBody House house, @PathVariable("id") int id) {
        log.info("Updating house with id : " + id);
        if (!service.isExists(id)) {
            log.error("House with id " + house.getId() + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        house.setId(id);
        service.update(house);
        log.info("House was updated into" + house);
        return new ResponseEntity<>(house, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found the house in the database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house in the database!"),
    })
    @DeleteMapping("deleteHouse/{id}")
    public ResponseEntity<?> deleteHouseById(@PathVariable("id") int id) {
        log.info("Deleting house with id " + id);
        if (Objects.isNull(service.findOne(id))) {
            log.error("House with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("House with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}