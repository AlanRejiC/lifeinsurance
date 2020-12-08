package com.cognizant.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.compress.utils.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cognizant.model.Excel;
import com.cognizant.model.User;
import com.cognizant.service.ExcelFileExporter;
import com.cognizant.service.UserService;


@Controller
public class DownloadExcelController {
	
	@Autowired
	private UserService userService;
	
	
	@GetMapping("/download/users.xlsx")
    public void downloadCsv(HttpServletResponse response) throws IOException {
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment; filename=customers.xlsx");
        ByteArrayInputStream stream = ExcelFileExporter.contactListToExcelFile(createData());
        IOUtils.copy(stream, response.getOutputStream());
    }

	private List<Excel> createData(){
    	List<Excel> customers = new ArrayList<Excel>();
    	List<User> users=userService.getAll();
    	for(int i=0;i<users.size();i++)
    	{
    		Excel excel=new Excel();
    		excel.setAns1(users.get(i).getAns1());
    		excel.setAns2(users.get(i).getAns2());
    		excel.setAns3(users.get(i).getAns3());
    		excel.setConfirmpassword(users.get(i).getConfirmpassword());
    		excel.setContact(users.get(i).getContact());
    		excel.setDob(users.get(i).getDob()+"");
    		excel.setEmail(users.get(i).getEmail());
    		excel.setFirstName(users.get(i).getFirstName());
    		excel.setGender(users.get(i).getGender());
    		excel.setLastName(users.get(i).getLastName());
    		excel.setPassword(users.get(i).getPassword());
    		excel.setRole(users.get(i).getRole());
    		excel.setSecurity1(users.get(i).getSecurity1());
    		excel.setSecurity2(users.get(i).getSecurity2());
    		excel.setSecurity3(users.get(i).getSecurity3());
    		excel.setUserId(users.get(i).getUserId());
    		customers.add(excel);
    	}
    	return customers;
    }
}
