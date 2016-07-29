package com.hybrid.mapper;

import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.hybrid.MosaicWebApplication;
import com.hybrid.domain.Dept;

public class DeptMapperTest {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(MosaicWebApplication.class, args);
		try {
				DeptMapper mapper = ctx.getBean(DeptMapper.class);
				
				mapper.delete(55);
				//insert 테스트
				mapper.insert(new Dept(55, "총무부", "서울"));
				
				Dept d = mapper.selectByDeptno(55);
				System.out.println("insert ==> " + d);
				
				List<Dept> depts = mapper.selectAll();
				depts.forEach(dept -> {
					System.out.println(dept);
				});
				
				//update 테스트
				mapper.update(new Dept(55, "총무부2", "부산"));
				d = mapper.selectByDeptno(55);
				System.out.println("update ==> "+d);
				
				depts = mapper.selectAll();
				depts.forEach(dept -> {
					System.out.println(dept);
				});
				
				//delete
				d = mapper.selectByDeptno(55);
				System.out.println("Delete ==> " + d);
				mapper.delete(55);
				
				depts = mapper.selectAll();
				depts.forEach(dept -> {
					System.out.println(dept);
				});
		} finally {
//			ctx.close();
		}	
	}

}
