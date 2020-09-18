package wooden_houses.controller;

import com.fasterxml.jackson.annotation.JsonIgnore;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import wooden_houses.domain.HouseImage;
import wooden_houses.service.impl.HouseImageServiceImpl;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import static javax.servlet.http.HttpServletResponse.*;


@RestController
public class HouseImageController {

    @Autowired
    private HouseImageServiceImpl service;
    private static final Logger log = Logger.getLogger(HouseImageController.class);

    @JsonIgnore
    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred.")
    })
    @PostMapping("/uploadImage")
    public ResponseEntity<?> uploadImage(@RequestParam("image") MultipartFile image,
                                         HttpServletResponse response) throws IOException {
        HouseImage houseImage = new HouseImage(image.getBytes(), image.getOriginalFilename());
        service.save(houseImage);
        log.info("Images were created!");

        response.setContentType("image/jpeg");
        response.getOutputStream().write(houseImage.getImage());
        response.getOutputStream().close();
        return new ResponseEntity<>(houseImage, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house images in the database!"),
    })
    @GetMapping("houseImage/{id}")
    public ResponseEntity<?> readHouseImagesById(@PathVariable("id") int id, HttpServletResponse response) throws IOException {
        log.info("Looking for a house images by id " + id);
        HouseImage images = service.findById(id);
        if (Objects.isNull(images)) {
            log.error("House images with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        response.setContentType("image/jpeg");
        response.getOutputStream().write(images.getImage());
        response.getOutputStream().close();
        log.info("House images with id " + id + " : " + images.getImageName());
        return new ResponseEntity<>(images, HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found any house images in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all house images!",
            response = HouseImage.class,
            responseContainer = "List")
    @GetMapping("/houseImages")
    public ResponseEntity<List<HouseImage>> readAllHouseImages() throws IOException {
        log.info("Looking for all house images from database!");

        List<Integer> ids = service.getAllIds();
        List<HouseImage> imageList = new ArrayList<>();
        for (int i = 0; i < ids.size(); i++) {
            imageList.add(service.findById(ids.get(i)));
        }
        if (imageList.isEmpty()) {
            log.info("Records not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        /* List<byte[]> images = imageList.stream().map(HouseImage::getImage).collect((Collectors.toList()));*/
        log.info("All house images : " + imageList.stream().map(HouseImage::getImageName).collect((Collectors.toList())));
        return new ResponseEntity<>(imageList, HttpStatus.OK);
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