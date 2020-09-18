package wooden_houses.controller;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import wooden_houses.domain.ContactInformation;
import wooden_houses.service.impl.ContactInformationServiceImpl;

import java.util.List;
import java.util.Objects;

import static javax.servlet.http.HttpServletResponse.*;

@RestController
public class ContactUsController {

    @Autowired
    private ContactInformationServiceImpl service;
    private static final Logger log = Logger.getLogger(ContactUsController.class);

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_CONFLICT, message = "User contact information was already created!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are empty or incorrect input!")
    })
    @PostMapping("/createContactInfo")
    public ResponseEntity<?> createNewContactInfo(@RequestBody ContactInformation contactInfo) {
        service.save(contactInfo);
        log.info(contactInfo + " was created!");
        return new ResponseEntity<>(contactInfo, HttpStatus.CREATED);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the user contact information in the database!"),
    })
    @GetMapping("contactInfo/{id}")
    public ResponseEntity<?> readContactInfoById(@PathVariable("id") int id) {
        log.info("Looking for a user contact information by id " + id);
        ContactInformation contactInfo = service.findById(id);
        if (Objects.isNull(contactInfo)) {
            log.error("User contact information with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("Contact information with id " + id + " : " + contactInfo);
        return new ResponseEntity<>(contactInfo, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found any user contact information in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all user contact information!",
            response = ContactInformation.class,
            responseContainer = "List")
    @GetMapping("/contactInfo")
    public ResponseEntity<List<ContactInformation>> readAllContacts() {
        log.info("Looking for all users contact information from database!");
        List<ContactInformation> contactInfoList = service.findAll();
        if (contactInfoList.isEmpty()) {
            log.info("Users contact information not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("All users contact information : " + contactInfoList);
        return new ResponseEntity<>(contactInfoList, HttpStatus.OK);
    }


    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found user contact information in database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the user contact information in the database!"),
    })
    @DeleteMapping("deleteContactInfo/{id}")
    public ResponseEntity<?> deleteContactById(@PathVariable("id") int id) {
        log.info("Deleting the user contact information with id " + id);
        if (Objects.isNull(service.findById(id))) {
            log.error("User contact information with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("User contact information with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}