package wooden_houses.controller;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import wooden_houses.domain.Houses;
import wooden_houses.service.impl.HousesServiceImpl;

import java.util.List;
import java.util.Objects;

import static javax.servlet.http.HttpServletResponse.*;

@RestController
public class HousesController {

    private static final Logger log = Logger.getLogger(HousesController.class);
    @Autowired
    private HousesServiceImpl service;

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_CONFLICT, message = "House was already created!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input!")
    })
    @PostMapping("/createHouse")
    public ResponseEntity<?> createNewHouse(@RequestBody Houses houses) {
        service.save(houses);
        log.info(houses + " was created!");
        return new ResponseEntity<>(houses, HttpStatus.CREATED);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house in the database!"),
    })
    @GetMapping("house/{id}")
    public ResponseEntity<?> readHouseById(@PathVariable("id") int id) {
        log.info("Looking for a house by id " + id);
        Houses houses = service.findById(id);
        if (Objects.isNull(houses)) {
            log.error("House with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("House with id " + id + " : " + houses);
        return new ResponseEntity<>(houses, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found any houses in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all houses!",
            response = Houses.class,
            responseContainer = "List")
    @GetMapping("/house")
    public ResponseEntity<List<Houses>> readAllHouses() {
        log.info("Looking for all houses from database!");
        List<Houses> housesList = service.findAll();
        if (housesList.isEmpty()) {
            log.info("Records not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("All houses : " + housesList);
        return new ResponseEntity<>(housesList, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input")
    })
    @PutMapping("/updateHouse/{id}")
    public ResponseEntity<?> updateHouseById(@RequestBody Houses houses, @PathVariable("id") int id) {
        log.info("Updating house with id : " + id);
        if (!service.isExists(id)) {
            log.error("House with id " + houses.getId() + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        houses.setId(id);
        service.update(houses);
        log.info("House was updated into" + houses);
        return new ResponseEntity<>(houses, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found the house in the database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house in the database!"),
    })
    @DeleteMapping("deleteHouse/{id}")
    public ResponseEntity<?> deleteHouseById(@PathVariable("id") int id) {
        log.info("Deleting house with id " + id);
        if (Objects.isNull(service.findById(id))) {
            log.error("House with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("House with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}