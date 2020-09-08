package wooden_houses.controller;

import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.UriComponentsBuilder;
import wooden_houses.domain.HouseImages;
import wooden_houses.service.impl.HouseImagesServiceImpl;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;
import java.util.Optional;

import static javax.servlet.http.HttpServletResponse.*;


@RestController
public class HouseImageController {

    @Autowired
    private HouseImagesServiceImpl service;
    private static final Logger log = Logger.getLogger(HouseImageController.class);

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred.")
    })
    @PostMapping("/uploadImage")
    public ResponseEntity<?> uploadImage(@RequestParam("image") MultipartFile image,
                                         @RequestParam("houseId") int houseId,
                                         UriComponentsBuilder builder,
                                         HttpServletResponse response) throws IOException {
        Optional<HouseImages> houseImage = Optional.ofNullable(service.save(image, houseId));
        log.info("Images were created!");
        HttpHeaders imageHeaders = new HttpHeaders();
        imageHeaders.setLocation(builder.path("/houseImages/{id}").buildAndExpand(houseImage.get().getId()).toUri());
        response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
        response.getOutputStream().write(houseImage.get().getImage());
        response.getOutputStream().close();
        return new ResponseEntity<>(houseImage, imageHeaders, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house images in the database!"),
    })
    @GetMapping("houseImage/{id}")
    public ResponseEntity<?> readHouseImagesById(@PathVariable("id") int id, HttpServletResponse response) throws IOException {
        log.info("Looking for a house images by id " + id);
        Optional<HouseImages> images = Optional.ofNullable(service.findById(id));
        if (Objects.isNull(images)) {
            log.error("House images with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
        response.getOutputStream().write(images.get().getImage());
        response.getOutputStream().close();
        log.info("House images with id " + id + " : " + images);
        return new ResponseEntity<>(images, HttpStatus.OK);
    }

    /*@ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found any house images in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all house images!",
            response = HouseImages.class,
            responseContainer = "List")
    @GetMapping("/houseImages")
    public ResponseEntity<List<HouseImages>> readAllHouseImages(Model map) {
        log.info("Looking for all house images from database!");
        List<HouseImages> imagesList = service.findAll();
        if (imagesList.isEmpty()) {
            log.info("Records not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        map.addAttribute("imageList", imagesList);
        log.info("All house images : " + imagesList);
        return new ResponseEntity<>(HttpStatus.OK);
    }*/

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house images in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. ")
    })
    @PutMapping("/updateHouseImage/{id}")
    public ResponseEntity<?> updateHouseImagesById(@RequestParam("image") MultipartFile image,
                                                   @PathVariable("id") int id) throws IOException {
        log.info("Updating the house images with id : " + id);
        if (!service.isExists(id)) {
            log.error("House images with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        HouseImages previous = service.findById(id);
        service.update(previous.getId(), image, previous.getHouseId());
        log.info("House images with id : " + id + " was updated!");
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_NO_CONTENT, message = "Not found the house images in the database"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house images in the database!"),
    })
    @DeleteMapping("deleteHouseImage/{id}")
    public ResponseEntity<?> deleteHouseImagesById(@PathVariable("id") int id) {
        log.info("Deleting the house images with id " + id);
        if (Objects.isNull(service.findById(id))) {
            log.error("House images with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        service.delete(id);
        log.info("House images with id " + id + " was deleted!");
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}