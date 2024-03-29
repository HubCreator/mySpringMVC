package kr.ac.hansung.cse.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor // 인자가 없는 생성자
@ToString // 객체 내의 값들을 toString 메서드로 호출해줌
public class Info {

	private int year;
	
	private int semester;
	
	private String subject_code;
	
	@NotEmpty
	@Size(min=3, max=35, message = "Subject name should be between 3 and 35 characters")
	private String subject_name;
	
	@NotEmpty
	@Size(min=1, max=10, message = "Category should be less than 10 characters")
	private String category;
	
	@NotEmpty
	@Size(min=3, max=10, message = "Professor's name should be between 3 and 10 characters")
	private String professor;
	
	private int credit;
	
	private int credit_sum;
	private int credit_totalAmount = 0;
}
