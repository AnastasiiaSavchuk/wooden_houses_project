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
import wooden_houses.domain.ContactUs;
import wooden_houses.service.impl.ContactUsServiceImpl;

import java.util.List;
import java.util.Objects;

import static javax.servlet.http.HttpServletResponse.*;

@RestController
public class ContactUsController {

    @Autowired
    private ContactUsServiceImpl service;
    private static final Logger log = Logger.getLogger(ContactUsController.class);

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_CONFLICT, message = "User contact information was already created!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are empty or incorrect input!")
    })
    @PostMapping("/createContact")
    public ResponseEntity<?> createNewContact(@RequestBody ContactUs contact, UriComponentsBuilder builder) {
        if (service.isExists(contact.getId())) {
            log.error("User contact information  with id " + contact.getId() + " already exists!" + contact);
            return new ResponseEntity<>((HttpStatus.CONFLICT));
        }
        service.save(contact);
        log.info(contact + " was created!");
        HttpHeaders contactHeaders = new HttpHeaders();
        contactHeaders.setLocation(builder.path("/userContactInformation/{id}").buildAndExpand(contact.getId()).toUri());
        return new ResponseEntity<>(contactHeaders, HttpStatus.CREATED);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found user contact information in the database!"),
    })
    @GetMapping("contact/{id}")
    public ResponseEntity<?> readContactById(@PathVariable("id") int id) {
        log.info("Looking for a user contact information by id " + id);
        ContactUs contact = service.findOne(id);
        if (Objects.isNull(contact)) {
            log.error("User contact information with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("Contact information with id " + id + " : " + contact);
        return new ResponseEntity<>(contact, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found user contact information in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all user contact information!",
            response = ContactUs.class,
            responseContainer = "List")
    @GetMapping("/contacts")
    public ResponseEntity<List<ContactUs>> readAllContacts() {
        log.info("Looking for all users contact information from database!");
        List<ContactUs> contactList = service.findAll();
        if (contactList.isEmpty()) {
            log.info("Users contact information not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("All users contact information : " + contactList);
        return new ResponseEntity<>(contactList, HttpStatus.OK);
    }


    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found user contact information in database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found user contact information in the database!"),
    })
    @DeleteMapping("deleteContact/{id}")
    public ResponseEntity<?> deleteContactById(@PathVariable("id") int id) {
        log.info("Deleting user contact information with id " + id);
        if (Objects.isNull(service.findOne(id))) {
            log.error("User contact information with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("User contact information with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}