package polymorphism.coupling;


public class BeanFactory { //인자 받아서 객체 생성 후 넘겨줌
	public Object getBean(String beanName) {
		if(beanName.equals("samsung")) {
			return new SamsungTV();
		} else if(beanName.equals("lg")) {
			return new LgTV();
		}
		return null;
	}
}
