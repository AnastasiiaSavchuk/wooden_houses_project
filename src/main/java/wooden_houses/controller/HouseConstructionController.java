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
import wooden_houses.domain.HouseConstruction;
import wooden_houses.service.impl.HouseConstructionServiceImpl;

import java.util.List;
import java.util.Objects;

import static javax.servlet.http.HttpServletResponse.*;

@RestController
public class HouseConstructionController {

    private static final Logger log = Logger.getLogger(HouseConstructionController.class);
    @Autowired
    private HouseConstructionServiceImpl service;

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_CONFLICT, message = "House construction information was already created!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input!")
    })
    @PostMapping("/createHouseConstructionInfo")
    public ResponseEntity<?> createNewHouseConstructionInfo(@RequestBody HouseConstruction constructionInfo, UriComponentsBuilder builder) {
        if (service.isExists(constructionInfo.getId())) {
            log.error("House construction information with id " + constructionInfo.getId() + " already exists!" + constructionInfo);
            return new ResponseEntity<>((HttpStatus.CONFLICT));
        }
        service.save(constructionInfo);
        log.info(constructionInfo + " was created!");
        HttpHeaders houseHeaders = new HttpHeaders();
        houseHeaders.setLocation(builder.path("/houseConstructionInfo/{id}").buildAndExpand(constructionInfo.getId()).toUri());
        return new ResponseEntity<>(houseHeaders, HttpStatus.CREATED);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the construction information in the database!"),
    })
    @GetMapping("houseConstructionInfo/{id}")
    public ResponseEntity<?> readHouseConstructionInfoById(@PathVariable("id") int id) {
        log.info("Looking for the house construction information by id " + id);
        HouseConstruction constructionInfo = service.findOne(id);
        if (Objects.isNull(constructionInfo)) {
            log.error("House construction information with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("House construction information with id " + id + " : " + constructionInfo);
        return new ResponseEntity<>(constructionInfo, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house construction information in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all house construction information!",
            response = HouseConstruction.class,
            responseContainer = "List")
    @GetMapping("/houseConstructionInfo")
    public ResponseEntity<List<HouseConstruction>> readAllHouseConstructionInfo() {
        log.info("Looking for all house construction information from database!");
        List<HouseConstruction> constructionInfoList = service.findAll();
        if (constructionInfoList.isEmpty()) {
            log.info("Records not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("All house construction information : " + constructionInfoList);
        return new ResponseEntity<>(constructionInfoList, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house construction information in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input")
    })
    @PutMapping("/updateConstructionInfo/{id}")
    public ResponseEntity<?> updateHouseConstructionInfoById(@RequestBody HouseConstruction constructionInfo, @PathVariable("id") int id) {
        log.info("Updating the house construction information with id : " + id);
        if (!service.isExists(id)) {
            log.error("House construction information with id " + constructionInfo.getId() + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        constructionInfo.setId(id);
        service.update(constructionInfo);
        log.info("House construction information was updated into" + constructionInfo);
        return new ResponseEntity<>(constructionInfo, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found the house construction information in the database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house construction information in the database!"),
    })
    @DeleteMapping("deleteHouseConstructionInfo/{id}")
    public ResponseEntity<?> deleteHouseConstructionInfoById(@PathVariable("id") int id) {
        log.info("Deleting the house construction information with id " + id);
        if (Objects.isNull(service.findOne(id))) {
            log.error("House construction information with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("House construction information with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}