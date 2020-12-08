package com.cognizant.service;


import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.cognizant.model.Excel;


public class ExcelFileExporter {
	
	public static ByteArrayInputStream contactListToExcelFile(List<Excel> customers) {
		try(Workbook workbook = new XSSFWorkbook()){
			Sheet sheet = workbook.createSheet("Users");
			
			Row row = sheet.createRow(0);
	        CellStyle headerCellStyle = workbook.createCellStyle();
	        headerCellStyle.setFillForegroundColor(IndexedColors.AQUA.getIndex());
	        headerCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
	        // Creating header
	        Cell cell = row.createCell(0);
	        cell.setCellValue("User Id");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(1);
	        cell.setCellValue("First Name");
	        cell.setCellStyle(headerCellStyle);
	
	        cell = row.createCell(2);
	        cell.setCellValue("Last Name");
	        cell.setCellStyle(headerCellStyle);
	
	        cell = row.createCell(3);
	        cell.setCellValue("Gender");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(4);
	        cell.setCellValue("Date of birth");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(5);
	        cell.setCellValue("Contact");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(6);
	        cell.setCellValue("Password");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(7);
	        cell.setCellValue("Confirm Password");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(8);
	        cell.setCellValue("Email");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(9);
	        cell.setCellValue("Security Question 1");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(10);
	        cell.setCellValue("Answer");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(11);
	        cell.setCellValue("Security Question 2");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(12);
	        cell.setCellValue("Answer");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(13);
	        cell.setCellValue("Security Question 3");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(14);
	        cell.setCellValue("Answer");
	        cell.setCellStyle(headerCellStyle);
	        
	        cell = row.createCell(15);
	        cell.setCellValue("Role");
	        cell.setCellStyle(headerCellStyle);
	        
	        // Creating data rows for each customer
	        for(int i = 0; i < customers.size(); i++) {
	        	Row dataRow = sheet.createRow(i + 1);
	        	dataRow.createCell(0).setCellValue(customers.get(i).getUserId());
	        	dataRow.createCell(1).setCellValue(customers.get(i).getFirstName());
	        	dataRow.createCell(2).setCellValue(customers.get(i).getLastName());
	        	dataRow.createCell(3).setCellValue(customers.get(i).getGender());
	        	dataRow.createCell(4).setCellValue(customers.get(i).getDob());
	        	dataRow.createCell(5).setCellValue(customers.get(i).getContact());
	        	dataRow.createCell(6).setCellValue(customers.get(i).getPassword());
	        	dataRow.createCell(7).setCellValue(customers.get(i).getConfirmpassword());
	        	dataRow.createCell(8).setCellValue(customers.get(i).getEmail());
	        	dataRow.createCell(9).setCellValue(customers.get(i).getSecurity1());
	        	dataRow.createCell(10).setCellValue(customers.get(i).getAns1());
	        	dataRow.createCell(11).setCellValue(customers.get(i).getSecurity2());
	        	dataRow.createCell(12).setCellValue(customers.get(i).getAns2());
	        	dataRow.createCell(13).setCellValue(customers.get(i).getSecurity3());
	        	dataRow.createCell(14).setCellValue(customers.get(i).getAns3());
	        	dataRow.createCell(15).setCellValue(customers.get(i).getRole());
	        }
	
	        // Making size of column auto resize to fit with data
	        sheet.autoSizeColumn(0);
	        sheet.autoSizeColumn(1);
	        sheet.autoSizeColumn(2);
	        sheet.autoSizeColumn(3);
	        sheet.autoSizeColumn(4);
	        sheet.autoSizeColumn(5);
	        sheet.autoSizeColumn(6);
	        sheet.autoSizeColumn(7);
	        sheet.autoSizeColumn(8);
	        sheet.autoSizeColumn(9);
	        sheet.autoSizeColumn(10);
	        sheet.autoSizeColumn(11);
	        sheet.autoSizeColumn(12);
	        sheet.autoSizeColumn(13);
	        sheet.autoSizeColumn(14);
	        sheet.autoSizeColumn(15);
	        
	        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	        workbook.write(outputStream);
	        return new ByteArrayInputStream(outputStream.toByteArray());
		} catch (IOException ex) {
			ex.printStackTrace();
			return null;
		}
	}
}
