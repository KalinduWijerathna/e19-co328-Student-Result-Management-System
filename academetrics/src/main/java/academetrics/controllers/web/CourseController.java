package academetrics.controllers.web;

import academetrics.dto.CourseDTO;
import academetrics.entity.Course;
import academetrics.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import java.util.List;

@Controller
@RequestMapping("/courses")
public class CourseController {
    @Autowired
    private CourseService courseService;

    @GetMapping("/")
    public String courses(Model model){
        List<CourseDTO> courses = courseService.getAllCourses();
        model.addAttribute("courses", courses);
        return "courses/courses";
    }

    @GetMapping("/new")
    public String newCourse(){
        return "courses/course-form";
    }

    @GetMapping("/course-list")
    public String getCourses(Model model) {

        List<CourseDTO> courses = courseService.getAllCourses();
        model.addAttribute("courses", courses);
        return "courses/course-list";
    }

    @PostMapping("/")
    public String createCourse(
            // TODO: Add form validation
            CourseDTO courseDTO
            //@Valid CourseDTO courseDTO,
            //BindingResult bindingResult
    ) {
//        if (bindingResult.hasErrors()) {
//            return "courses/";
//        }

        courseService.saveCourse(courseDTO);
        return "redirect:/courses/";
    }

    @GetMapping("/update/{code}")
    public String editCourse(@PathVariable String code, Model model){
        CourseDTO courseDTO = courseService.getCourseByCode(code);
        model.addAttribute("course",courseDTO);
        return "courses/course-form";
    }
    
    @PostMapping("/update/{code}")
    public String updateCourse(CourseDTO courseDTO, @PathVariable String code) {
        courseService.updateCourse(code, courseDTO);
        return "redirect:/courses/";
    }
}
