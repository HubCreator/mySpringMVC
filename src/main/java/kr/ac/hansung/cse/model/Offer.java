package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor // 인자가 없는 생성자
@ToString // 객체 내의 값들을 toString 메서드로 호출해줌
public class Offer {

	private int id;
	
	private String name;
	private String email;
	private String text;
}
