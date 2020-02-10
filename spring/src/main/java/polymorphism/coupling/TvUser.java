package polymorphism.coupling;

public class TvUser {

	public static void main(String[] args) {//String[] args명령어 인수
		//TV tv = new SamsungTV();
		BeanFactory factory = new BeanFactory();
		TV tv = (TV)factory.getBean(args[0]); //인자값 받아서 생성한 객체
		//BeanFactory에서 생성한 객체를 tv변수가 참조하도록
		//run configuration 에서 인자를 지정할 수 있음
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();

	}
}
