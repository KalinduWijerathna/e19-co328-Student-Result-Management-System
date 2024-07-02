package academetrics.repository;

import academetrics.entity.StudentAssesment;
import org.springframework.data.jpa.repository.JpaRepository;


public interface StudentAssesmentRepository extends JpaRepository<StudentAssesment, Integer> {

}
