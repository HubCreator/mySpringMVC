package kr.ac.hansung.cse.model;

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
	private String subject_name;
	private String category;
	private String professor;
	private int credit;
	private int credit_sum;
}
