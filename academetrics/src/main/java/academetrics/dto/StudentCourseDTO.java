package academetrics.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class StudentCourseDTO {
    String grade;
    CourseOfferingDTO courseOffering;
}
