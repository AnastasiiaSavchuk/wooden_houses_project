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
import wooden_houses.domain.HouseBuilding;
import wooden_houses.service.impl.HouseBuildingServiceImpl;

import java.util.List;
import java.util.Objects;

import static javax.servlet.http.HttpServletResponse.*;

@RestController
public class HouseBuildingController {

    private static final Logger log = Logger.getLogger(HouseBuildingController.class);
    @Autowired
    private HouseBuildingServiceImpl service;

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_CONFLICT, message = "House building component was already created!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input!")
    })
    @PostMapping("/createHouseBuildingComponent")
    public ResponseEntity<?> createNewHouseBuildingComponent(@RequestBody HouseBuilding component, UriComponentsBuilder builder) {
        if (service.isExists(component.getId())) {
            log.error("House with id " + component.getId() + " already exists!" + component);
            return new ResponseEntity<>((HttpStatus.CONFLICT));
        }
        service.save(component);
        log.info(component + " was created!");
        HttpHeaders houseHeaders = new HttpHeaders();
        houseHeaders.setLocation(builder.path("/houseBuildingComponent/{id}").buildAndExpand(component.getId()).toUri());
        return new ResponseEntity<>(houseHeaders, HttpStatus.CREATED);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not house building component a house in the database!"),
    })
    @GetMapping("houseBuildingComponent/{id}")
    public ResponseEntity<?> readHouseBuildingComponentById(@PathVariable("id") int id) {
        log.info("Looking for a house building component by id " + id);
        HouseBuilding component = service.findOne(id);
        if (Objects.isNull(component)) {
            log.error("House building component with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("House with id " + id + " : " + component);
        return new ResponseEntity<>(component, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found house building components in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all houses!",
            response = HouseBuilding.class,
            responseContainer = "List")
    @GetMapping("/houseBuildingComponents")
    public ResponseEntity<List<HouseBuilding>> readAllHouseBuildingComponents() {
        log.info("Looking for all house building components from database!");
        List<HouseBuilding> componentList = service.findAll();
        if (componentList.isEmpty()) {
            log.info("Records not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("All houses : " + componentList);
        return new ResponseEntity<>(componentList, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found house building component in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input")
    })
    @PutMapping("/updateBuildingComponent/{id}")
    public ResponseEntity<?> updateHouseBuildingComponentById(@RequestBody HouseBuilding component, @PathVariable("id") int id) {
        log.info("Updating house building component with id : " + id);
        if (!service.isExists(id)) {
            log.error("House building component with id " + component.getId() + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        component.setId(id);
        service.update(component);
        log.info("House building component was updated into" + component);
        return new ResponseEntity<>(component, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found house building component in database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found house building component in the database!"),
    })
    @DeleteMapping("deleteHouseBuildingComponent/{id}")
    public ResponseEntity<?> deleteHouseBuildingComponentById(@PathVariable("id") int id) {
        log.info("Deleting house building component with id " + id);
        if (Objects.isNull(service.findOne(id))) {
            log.error("House building component with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("House building component with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}