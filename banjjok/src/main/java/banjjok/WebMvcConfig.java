package banjjok;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {
	// interceptor
//	@Override
//	public void addInterceptors(InterceptorRegistry registry) {
//		// addPathPatterns("/**/**") : interceptor 걸 페이지
//		// excludePathPatterns("/register/**/") : interceptor 예외처리 할 주소
//		registry.addInterceptor(new CertificationInterceptor()).addPathPatterns("/**/**")
//		.excludePathPatterns("/register/**/").excludePathPatterns("/login").excludePathPatterns("/schedule/**")
//		.excludePathPatterns("/").excludePathPatterns("/static/**")
//		.excludePathPatterns("/chatting")
//		.excludePathPatterns("/chat/**");
//	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/**").addResourceLocations("/WEB-INF/view/");
	}

}
