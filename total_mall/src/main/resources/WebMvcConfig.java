import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    	// 정적 리소스의 위치를 지정
        registry.addResourceHandler("/resources/**")
                .addResourceLocations("/resources/");

        // TTF 파일의 위치를 추가
        registry.addResourceHandler("/resources/font/**")
                .addResourceLocations("/resources/font/");
    }
}
