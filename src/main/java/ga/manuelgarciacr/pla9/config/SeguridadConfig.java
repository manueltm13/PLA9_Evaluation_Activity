package ga.manuelgarciacr.pla9.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SeguridadConfig extends WebSecurityConfigurerAdapter {
	
	/*
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().passwordEncoder(passwordEncoder()).withUser("ana")
				.password(passwordEncoder().encode("1234")).roles("COLABORADOR");
		auth.inMemoryAuthentication().passwordEncoder(passwordEncoder()).withUser("eva")
				.password(passwordEncoder().encode("1234")).roles("COLABORADOR", "EDITOR");
		auth.inMemoryAuthentication().passwordEncoder(passwordEncoder()).withUser("pep")
				.password(passwordEncoder().encode("1234")).roles("COLABORADOR", "EDITOR", "ADMINISTRADOR");
	}
	*/
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(securityDataSource);
	}

	@Autowired
	private DataSource securityDataSource;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/").hasRole("COLABORADOR")
			.antMatchers("/editor/**").hasRole("EDITOR")
			.antMatchers("/administrador/**").hasRole("ADMINISTRADOR")
			.and().formLogin().loginPage("/formLogin")
			.loginProcessingUrl("/authenticateTheUser")
			.permitAll().and().logout().permitAll()
			.and().exceptionHandling().accessDeniedPage("/prohibido");
	}
	
	/*
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	*/
	
}