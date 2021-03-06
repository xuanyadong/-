package com.box.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.box.service.UserService;

@RequestMapping("/note")
@Controller
public class NoteController {
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("/getNote.do")
	public int getNote(int userId){
		//System.out.println(userId);
		int msj=userService.getNote(userId);
		return msj;
	}
}
