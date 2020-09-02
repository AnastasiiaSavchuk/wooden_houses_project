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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import wooden_houses.domain.HouseImages;
import wooden_houses.service.impl.HouseImagesServiceImpl;

import java.util.List;
import java.util.Objects;

import static javax.servlet.http.HttpServletResponse.*;

@RestController
public class HouseImageController {

    private static final Logger log = Logger.getLogger(HouseImageController.class);
    @Autowired
    private HouseImagesServiceImpl service;

    @PostMapping("/uploadImage")
    public HouseImages uploadImage(@RequestParam("image") MultipartFile image) {
        HouseImages houseImages = service.saveFile(file);
        String fileDownloadUrl = ServletUriComponentsBuilder.fromCurrentContextPath().path("/downloadFile/")
                .path(houseImages.getId()).toUriString();
        return new MultipartUploadResponse(houseImages.getFileName(), fileDownloadUrl,
                file.getContentType(), file.getSize());
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_CONFLICT, message = "House images was already created!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input!")
    })
    @PostMapping("/uploadHouseImages")
    public ResponseEntity<?> uploadNewHouseImages(@RequestParam("image1") MultipartFile image1,
                                                  @RequestParam("image2") MultipartFile image2,
                                                  @RequestParam("image3") MultipartFile image3,
                                                  @RequestParam("image4") MultipartFile image4,
                                                  @RequestParam("image5") MultipartFile image5,
                                                  @RequestParam("image6") MultipartFile image6,
                                                  @RequestParam("image7") MultipartFile image7,
                                                  @RequestParam("image8") MultipartFile image8,
                                                  @RequestParam("image9") MultipartFile image9,
                                                  @RequestParam("image10") MultipartFile image10,
                                                  @RequestParam("image11") MultipartFile image11,
                                                  @RequestParam("image12") MultipartFile image12,
                                                  @RequestParam("image13") MultipartFile image13,
                                                  @RequestParam("image14") MultipartFile image14,
                                                  @RequestParam("image15") MultipartFile image15) {
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
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found a house images in the database!"),
    })
    @GetMapping("houseImages/{id}")
    public ResponseEntity<?> readHouseImagesById(@PathVariable("id") int id) {
        log.info("Looking for a house images by id " + id);
        HouseImages images = service.findOne(id);
        if (Objects.isNull(images)) {
            log.error("House images with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("House images with id " + id + " : " + images);
        return new ResponseEntity<>(images, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found house images in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all house images!",
            response = HouseImages.class,
            responseContainer = "List")
    @GetMapping("/houseImages")
    public ResponseEntity<List<HouseImages>> readAllHouseImages() {
        log.info("Looking for all house images from database!");
        List<HouseImages> imagesList = service.findAll();
        if (imagesList.isEmpty()) {
            log.info("Records not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        log.info("All house images : " + imagesList);
        return new ResponseEntity<>(imagesList, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found house images in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. " +
                    "Some fields are incorrect input")
    })
    @PutMapping("/updateHouseImages/{id}")
    public ResponseEntity<?> updateHouseImagesById(@RequestBody House house, @PathVariable("id") int id) {
        log.info("Updating house images with id : " + id);
        if (!service.isExists(id)) {
            log.error("House images with id " + house.getId() + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        house.setId(id);
        service.update(house);
        log.info("House images was updated into" + house);
        return new ResponseEntity<>(house, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found images house in database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found house images in the database!"),
    })
    @DeleteMapping("deleteHouseImages/{id}")
    public ResponseEntity<?> deleteHouseImagesById(@PathVariable("id") int id) {
        log.info("Deleting house images with id " + id);
        if (Objects.isNull(service.findOne(id))) {
            log.error("House images with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("House images with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}