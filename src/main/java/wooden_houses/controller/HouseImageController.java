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
import org.springframework.web.util.UriComponentsBuilder;
import wooden_houses.domain.HouseImages;
import wooden_houses.service.impl.HouseImagesServiceImpl;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

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
    public ResponseEntity<?> uploadImage(@RequestParam("image") MultipartFile image, UriComponentsBuilder builder,
                                         HttpServletResponse response) throws IOException {
        HouseImages houseImage = service.save(image, image.getOriginalFilename());
        log.info("Images were created!");

        HttpHeaders imageHeaders = new HttpHeaders();
        imageHeaders.setLocation(builder.path("/houseImages/{id}").buildAndExpand(houseImage.getId()).toUri());

        response.setContentType("image/jpeg");
        response.getOutputStream().write(houseImage.getImage());
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
        HouseImages images = service.findById(id);

        if (Objects.isNull(images)) {
            log.error("House images with id " + id + " not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        response.setContentType("image/jpeg");
        response.getOutputStream().write(images.getImage());
        response.getOutputStream().close();
        log.info("House images with id " + id + " : " + images);
        return new ResponseEntity<>(images, HttpStatus.OK);
    }

    /*TODO: я не розумію що зробити щоб воно мені виводило всі фото які є загруженні в базу даних!!!!!
     *  допоможеш мені з цим розібратись??? Пліз!!!!!!!!!!!!!!!!!!!!!*/

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok!"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found any house images in the database!"),
    })
    @ApiOperation(value = "Retrieves information about all house images!",
            response = HouseImages.class,
            responseContainer = "List")
    @GetMapping("/houseImages")
    public ResponseEntity<List<HouseImages>> readAllHouseImages(HttpServletResponse response) throws IOException {
        log.info("Looking for all house images from database!");
        List<HouseImages> imagesList = service.findAll();

        if (imagesList.isEmpty()) {
            log.info("Records not found!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        List<byte[]> imagesToShow = imagesList.stream().map(HouseImages::getImage).collect(Collectors.toList());

        response.setContentType("image/jpeg");
        response.getOutputStream().write( ?????)
        response.getOutputStream().close();
        log.info("All house images : " + ? ???)
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @ApiResponses(value = {@ApiResponse(code = SC_OK, message = "Ok"),
            @ApiResponse(code = SC_BAD_REQUEST, message = "Something went wrong! Please try again!"),
            @ApiResponse(code = SC_NOT_FOUND, message = "Not found the house images in the database!"),
            @ApiResponse(code = SC_INTERNAL_SERVER_ERROR, message = "Validation error occurred. ")
    })
    @PutMapping("/updateHouseImage/{id}")
    public ResponseEntity<?> updateHouseImagesById(@RequestParam("image") MultipartFile image, @PathVariable("id") int id,
                                                   HttpServletResponse response) throws IOException {
        log.info("Updating the house images with id : " + id);

        if (!service.isExists(id)) {
            log.error("House images with id " + id + " doesn't exists!");
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        HouseImages previous = service.findById(id);
        HouseImages houseImage = service.update(previous.getId(), image, previous.getImageName());

        response.setContentType("image/jpeg");
        response.getOutputStream().write(houseImage.getImage());
        response.getOutputStream().close();
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