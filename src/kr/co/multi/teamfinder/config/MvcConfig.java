package kr.co.multi.teamfinder.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
@ComponentScan("kr.co.multi.teamfinder.controller")	// bean 하나하나 읽는거 말고 스캔할거야
public class MvcConfig implements WebMvcConfigurer {

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		registry.jsp("/WEB-INF/views/", ".jsp");
		// 경로, 확장자 / WEB-INF/views에 있는 .jsp를 view로 쓰겠다. / jsp는 url로 접근하여 내부 코드를 읽어올 수 있음, web-inf는 url로 접근 불가, 
		//보안을 위해서 jsp파일을 web-inf에 넣어놓고 view는 내부적으로 web-inf에 접근시켜 사용하기도 함
	}
	
	// '/' 뒤에 view가 아닌 다른 .jpg 같은 애들이 올 때 처리
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		//registry.addResourceHandler("/img/**").addResourceLocations("classpath:/static/img/");	// jsp페이지에서 url이 /img/~~ 로 들어오면 **(뭐든) classpath의 static 디렉토리 밑 img 디렉토리에서 찾아봐 
		registry.addResourceHandler("/images/**").addResourceLocations("/images/");	// jsp페이지에서 url이 /img/~~ 로 들어오면 **(뭐든) classpath의 static 디렉토리 밑 img 디렉토리에서 찾아봐 
		registry.addResourceHandler("/fonts/**").addResourceLocations("/assets/fonts/");	// jsp페이지에서 url이 /img/~~ 로 들어오면 **(뭐든) classpath의 static 디렉토리 밑 img 디렉토리에서 찾아봐 
		registry.addResourceHandler("/js/**").addResourceLocations("/assets/js/");	// jsp페이지에서 url이 /img/~~ 로 들어오면 **(뭐든) classpath의 static 디렉토리 밑 img 디렉토리에서 찾아봐 
		registry.addResourceHandler("/sass/**").addResourceLocations("/assets/sass/");	// jsp페이지에서 url이 /img/~~ 로 들어오면 **(뭐든) classpath의 static 디렉토리 밑 img 디렉토리에서 찾아봐 
		registry.addResourceHandler("/css/**").addResourceLocations("/assets/css/");	// jsp페이지에서 url이 /img/~~ 로 들어오면 **(뭐든) classpath의 static 디렉토리 밑 img 디렉토리에서 찾아봐 
		//							요청할 때의 url						실제 접근 경로
		// 모든 요청이 디스패처 서블릿을 거치므로 static한 자원들에 대한 설정이 필요하다.
	}
	
	// url 설정, url이 ~로 들어오면 redirect로 날려줘
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addRedirectViewController("/", "/index"); // '/'가 들어오면 '/hi'로 redirect 해줘
	}
	
	
	
	
	
	
	

}

