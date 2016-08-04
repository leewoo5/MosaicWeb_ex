package com.hybrid.config;

import org.apache.catalina.Context;
import org.apache.tomcat.util.descriptor.web.ErrorPage;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.context.embedded.tomcat.TomcatContextCustomizer;
import org.springframework.boot.context.embedded.tomcat.TomcatEmbeddedServletContainerFactory;
import org.springframework.context.annotation.Configuration;

@Configuration
public class EmbeddedTomcatConfig implements EmbeddedServletContainerCustomizer {

	@Override
	public void customize(ConfigurableEmbeddedServletContainer container) {
		TomcatEmbeddedServletContainerFactory factory = (TomcatEmbeddedServletContainerFactory) container;
		factory.addContextCustomizers(new TomcatContextCustomizer() {
			
			@Override
			public void customize(Context context) {
				
				/*
				 * welcomeFile
				 * html은 자동으로 index파일이 불러와지지만 jsp는 등록해줘야 한다.
				 */
				context.addWelcomeFile("index.jsp");
				
				
				
				ErrorPage error404page = new ErrorPage();
				
				error404page.setErrorCode(404);
				error404page.setLocation("/WEB-INF/error/404.jsp");
//				context.addErrorPage(error404page);
				
				ErrorPage errorArithmeticPage = new ErrorPage();
				
				errorArithmeticPage.setExceptionType("java.lang.ArithmeticException");
				errorArithmeticPage.setLocation("/WEB-INF/error/arithmetic.jsp");
//				context.addErrorPage(errorArithmeticPage);
			}
		});
	}

}
