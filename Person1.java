package com.id.dao;

public class Person1 {
	//?200728  해당 클레스 안에서id와 name의 흐름은?
	// =필요하면 부르는 거임
	//	private로 선언 됨으로 메소드로 부를 때만 호출되니, 이 private raw값 자체는 외부에서 접근 과 절대 변경 불가이지! 
	// java는 class로써 저장한다.
	private int id = 20181004;
	private String name ="1번사람";
			
	//default= class Person1 안의 메서드 Person1 
	public Person1() {	
	}

	public int getId() {
		return id;
	}

	public void setId(int id){
		this.id=id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {	
		this.name= name;
	}
	/*--200728 
	com.id.dao.Person#에서 가져와서 표기하자
	id.com이라는 도메인에서 dao라는 기능을 하는 package이다.
	(cf1. 엄연하게는 dao라는 package는 이렇게 생기지 않았다. 
	*/
}
