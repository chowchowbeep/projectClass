package origin;

public class TvUser {

	public static void main(String[] args) {
		LgTV tv = new LgTV();
		tv.powerOn();
		tv.soundUp();
		tv.soundDown();
		tv.powerOff();
//소스 수정없이 tv 클래스 교체해보기
	}
}
