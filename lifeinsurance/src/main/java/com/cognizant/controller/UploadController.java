package com.cognizant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UploadController {

	@GetMapping(value="/upload")
	public String upload()
	{
		return "Upload";
	}
}
