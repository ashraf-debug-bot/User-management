package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllerData {
	@Autowired
	UserDao userdao;
@RequestMapping("userDeatils")
public String AddUser(UserData data) {
	userdao.save(data);
	return "index.jsp";
	}
@RequestMapping("getUser")
public ModelAndView getUser(@RequestParam int id) {
	ModelAndView model=new ModelAndView("showuser.jsp");
	UserData data =userdao.findById(id).orElse(new UserData());
	model.addObject("data",data);
	return model;
}
@RequestMapping("delUser")
public ModelAndView delUser(@RequestParam int id) {
	ModelAndView model=new ModelAndView("delete.jsp");
	UserData data =userdao.findById(id).orElse(new UserData());
	userdao.deleteById(id);
	model.addObject("data",data);
	return model;
}
//@RequestMapping("updateUser")
//public ModelAndView update(UserData data) {
//    ModelAndView model = new ModelAndView("update.jsp");
//    data = userdao.findById(data.getId()).orElse(new UserData());
//    model.addObject("data", data);
//    return model;
//}
@RequestMapping("updateUser")
public ModelAndView update(UserData data) {
    ModelAndView model = new ModelAndView("update.jsp");
    data = userdao.findById(data.getId()).orElse(new UserData());
    userdao.deleteById(data.getId());
    model.addObject(data);
    return model;
}
}
