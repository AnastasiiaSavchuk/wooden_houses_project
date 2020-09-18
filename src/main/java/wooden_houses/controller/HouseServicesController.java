package wooden_houses.controller;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import wooden_houses.domain.HouseServices;
import wooden_houses.service.impl.HouseServicesServiceImpl;

import java.util.List;
import java.util.Objects;

import static javax.servlet.http.HttpServletResponse.*;

@RestController
public class HouseServicesController {

    @Autowired
    private HouseServicesServiceImpl service;
    private static final Logger log = Logger.getLogger(HouseServicesController.class);

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_CONFLICT, message = "House service was already created!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input!")
    })
    @PostMapping("/createHouseService")
    public ResponseEntity<?> createNewHouseService(@RequestBody HouseServices houseService) {
        if (service.isExists(houseService.getId())) {
            log.error("House service with id " + houseService.getId() + " already exists!" + houseService);
            return new ResponseEntity<>((HttpStatus.CONFLICT));
        }
        service.save(houseService);
        log.info(houseService + " was created!");
        return new ResponseEntity<>(houseService, HttpStatus.CREATED);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house service in the database!"),
    })
    @GetMapping("houseService/{id}")
    public ResponseEntity<?> readHouseServiceById(@PathVariable("id") int id) {
        log.info("Looking for the house service by id " + id);
        HouseServices houseServices = service.findById(id);
        if (Objects.isNull(houseServices)) {
            log.error("House service with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("House service with id " + id + " : " + houseServices);
        return new ResponseEntity<>(houseServices, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found any house services in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all house services!",
            response = HouseServices.class,
            responseContainer = "List")
    @GetMapping("/houseService")
    public ResponseEntity<List<HouseServices>> readAllHouseServices() {
        log.info("Looking for all house services from database!");
        List<HouseServices> houseServiceList = service.findAll();
        if (houseServiceList.isEmpty()) {
            log.info("Records not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("All houses : " + houseServiceList);
        return new ResponseEntity<>(houseServiceList, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house service in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input")
    })
    @PutMapping("/updateHouseService/{id}")
    public ResponseEntity<?> updateHouseServiceById(@RequestBody HouseServices houseService, @PathVariable("id") int id) {
        log.info("Updating the house service with id : " + id);
        if (!service.isExists(id)) {
            log.error("House service with id " + houseService.getId() + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        houseService.setId(id);
        service.update(houseService);
        log.info("House service was updated into" + houseService);
        return new ResponseEntity<>(houseService, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found the house service in the database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house service in the database!"),
    })
    @DeleteMapping("deleteHouseService/{id}")
    public ResponseEntity<?> deleteHouseServiceById(@PathVariable("id") int id) {
        log.info("Deleting the house service with id " + id);
        if (Objects.isNull(service.findById(id))) {
            log.error("House service with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("House service with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}