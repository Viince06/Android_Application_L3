package fr.info.pl2020.plplg.controller;

import fr.info.pl2020.plplg.dto.CareerRequest;
import fr.info.pl2020.plplg.dto.TeachingUnitResponse;
import fr.info.pl2020.plplg.entity.Student;
import fr.info.pl2020.plplg.entity.TeachingUnit;
import fr.info.pl2020.plplg.exception.ClientRequestException;
import fr.info.pl2020.plplg.security.StudentDetails;
import fr.info.pl2020.plplg.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;
import java.util.stream.Collectors;

@RestController
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping(value = "/student", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<Student> getStudent() {
        return new ResponseEntity<>(getLoggedStudent(), HttpStatus.OK);
    }

    @GetMapping(value = "/student/career", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<List<TeachingUnitResponse>> getStudentCareer(@RequestParam(name = "semester", defaultValue = "0") int semester) {
        List<TeachingUnit> career = getLoggedStudent().getCareer();
        if (semester != 0) {
            career = career.stream().filter(teachingUnit -> teachingUnit.getSemester().getId() == semester).collect(Collectors.toList());
        }
        return new ResponseEntity<>(TeachingUnitResponse.TeachingUnitListToTeachingUnitResponseList(career), career.isEmpty() ? HttpStatus.NO_CONTENT : HttpStatus.OK);  //TODO tester les 2 cas
    }

    @PostMapping(value = "/student/career", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<?> addTeachingUnitInStudentCareer(@RequestBody @NotNull @Valid CareerRequest body) {
        try {
            this.studentService.addTeachingUnitInCareer(getLoggedStudent(), body.getTeachingUnitId());
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (ClientRequestException cre) {
            return new ResponseEntity<>(cre.getClientMessage(), cre.getStatus());
        }
    }
    @PutMapping(value= "/student/validateCareer",produces  = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<?> validateStudentCareer(@RequestBody @NotNull @NotEmpty List<Integer> teachingUnitIdList) {
        try {
            this.studentService.validateCareer(getLoggedStudent(), teachingUnitIdList);
            return new ResponseEntity<>("{}", HttpStatus.OK);
        } catch (ClientRequestException cre) {
            return new ResponseEntity<>(cre.getClientMessage(), cre.getStatus());
        }
    }

    @PutMapping(value = "/student/career", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<?> updateStudentCareer(@RequestBody @NotNull @NotEmpty List<Integer> teachingUnitIdList,@RequestParam(name = "semester", defaultValue = "0") int currentSemesterId ) {
        try {
            this.studentService.updateCareer(getLoggedStudent(), teachingUnitIdList, currentSemesterId);
            return new ResponseEntity<>("{}", HttpStatus.OK);
        } catch (ClientRequestException cre) {
            return new ResponseEntity<>(cre.getClientMessage(), cre.getStatus());
        }
    }

    private Student getLoggedStudent() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof User) {
            return this.studentService.getByLoggedUser(((User) principal));
        } else if (principal instanceof StudentDetails) {
            return this.studentService.getById(((StudentDetails) principal).getId());
        } else {
            throw new RuntimeException("Echec de détéction du type de User lors de l'authification");
        }
    }
}
