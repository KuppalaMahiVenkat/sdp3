package com.klu.demo.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.klu.demo.model.admin;
import com.klu.demo.model.delete;
import com.klu.demo.model.login;
import com.klu.demo.model.politician;
import com.klu.demo.model.sendmessage;
import com.klu.demo.model.sentmessage;
import com.klu.demo.model.signup;
import com.klu.demo.model.viewmessage;
import com.klu.demo.service.adminService;
import com.klu.demo.service.loginService;
import com.klu.demo.service.politicianService;
import com.klu.demo.service.sendmessageService;
import com.klu.demo.service.sentmessageService;
import com.klu.demo.service.signupService;
@RestController
public class cont {
	@Autowired
	private loginService ls;
	@Autowired
	private signupService ss;
	@Autowired
	private adminService as;
	@Autowired
	private politicianService ps;
	@Autowired
	private sendmessageService  sms;
	@Autowired
	private sentmessageService  sst;
	@GetMapping("/")
    public ModelAndView home()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("home");
    	return mv;
    }
	@GetMapping("/userhome")
    public ModelAndView userhome()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("userhome");
    	return mv;
    }
	@GetMapping("/une")
    public ModelAndView une()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("une");
    	return mv;
    }
	@GetMapping("/pne")
    public ModelAndView pne()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("pne");
    	return mv;
    }
	@GetMapping("/adminhome")
    public ModelAndView adminhome()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("adminhome");
    	return mv;
    }
	@GetMapping("/polhome")
    public ModelAndView polhome()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("polhome");
    	return mv;
    }
	@GetMapping("/aboutus")
    public ModelAndView aboutus()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("about us");
    	return mv;
    }
	@GetMapping("/forget")
    public ModelAndView forget()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("forget");
    	return mv;
    }
	@GetMapping("/pforget")
    public ModelAndView pforget()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("pforget");
    	return mv;
    }
	@GetMapping("success")
    public ModelAndView success()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("success");
    	return mv;
    }
	@GetMapping("perror")
    public ModelAndView perror()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("perror");
    	return mv;
    }
	@GetMapping("/error")
    public ModelAndView error()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("error");
    	return mv;
    }
	@PostMapping("/change")
    public ModelAndView change()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("change");
    	return mv;
    }
	@PostMapping("/pchange")
    public ModelAndView pchange()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("pchange");
    	return mv;
    }
	@GetMapping("/logout")
	public ModelAndView logout(HttpServletRequest request)
    
		    {
		    	ModelAndView mv=new ModelAndView();
		    	mv.setViewName("logout");
		    	return mv;
		    }
    
	 @GetMapping("/login")
	    public ModelAndView login()
	    {
	    	return new ModelAndView("login","log",new login());
	    }
	 @GetMapping("/addpol")
	    public ModelAndView addpol()
	    {
	    	return new ModelAndView("addpol","ap",new politician());
	    }
	 @GetMapping("/sendmessage")
	    public ModelAndView sendmessage()
	    {
	    	//return new ModelAndView("sendmessage","snm",new sendmessage());
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("sendm");
	    	return mv;
	    }
	 @GetMapping("/sentmessage")
	    public ModelAndView sentmessage()
	    {
	    	return new ModelAndView("sentmessage","ssm",new sentmessage());
	    }
	 @GetMapping("/viewmessage")
	    public ModelAndView viewmessage()
	    {
	    	return new ModelAndView("viewmessage","vvm",new viewmessage());
	    }
	 @GetMapping("/viewmessage1")
	    public ModelAndView viewmessage1()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("sm");
	    	return mv;
	    }
	 @GetMapping("/rms1")
	    public ModelAndView rms1()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("rmp");
	    	return mv;
	    }
	 @GetMapping("/viewmessage2")
	    public ModelAndView viewmessage2()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("smp");
	    	return mv;
	    }
	 @GetMapping("/rms")
	    public ModelAndView rms()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("rm");
	    	return mv;
	    }
	 @GetMapping("/userprofile")
	    public ModelAndView userprofile()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("userprofile");
	    	return mv;
	    }
	 @GetMapping("/polprofile")
	    public ModelAndView polprofile()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("polprofile");
	    	return mv;
	    }
	 @GetMapping("/ne")
	    public ModelAndView ne()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("ne");
	    	return mv;
	    }
	 @GetMapping("/sne")
	    public ModelAndView sne()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("sne");
	    	return mv;
	    }
	 @GetMapping("/public")
	    public ModelAndView public1()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("public");
	    	return mv;
	    }
	 @PostMapping("/sendpublic")
	    public ModelAndView sendpublic1()
	    {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("sendpublic");
	    	return mv;
	    }
	 @GetMapping("/delete")
	    public ModelAndView delete()
	    {
	    	return new ModelAndView("delete","d",new delete());
	    }
	 @GetMapping("/signup")
	    public ModelAndView signup()
	    {
	    	return new ModelAndView("signup","sig",new signup());
	    }
	 @PostMapping("/signsub")
	 public  ModelAndView signsub(@ModelAttribute("sig") signup sig) {
	         signup a = ss.findemail(sig.getEmail());
	         politician b = ps.findemail(sig.getEmail());
	         
	         if(a==null && b==null) {
	        	 ss.addsign(sig);
	        	 return new ModelAndView("login","log",new login());
	         	//mv.addObject("mail",sig.getEmail());

	         }
	         else if(a!=null && b==null)
	         {
	        	 ModelAndView mv=new ModelAndView();
		         	mv.setViewName("/ne");
		         	return mv;
	         }
	         else {
	        	 ModelAndView mv=new ModelAndView();
	         	mv.setViewName("/sne");
	         	return mv;
	         }
	        	 
	         
		   
}
	 @PostMapping("/loginsub")
	 public ModelAndView loginsub(@ModelAttribute("log") login log,HttpServletRequest request) {
		 String em=log.getEmail();
		 signup a = ss.findemail(log.getEmail());
		 login b = ls.findemail(log.getEmail());
		 admin c=as.findemail(log.getEmail());
		 politician d = ps.findemail(log.getEmail());
		 if(a!=null && (a.getPassword().equals(log.getPassword()))) {
			 if(b!=null && (b.getPassword().equals(log.getPassword()))){
				 	request.getSession().setAttribute("email",em);
			 		 return new ModelAndView("userhome");
			 	}
			 	else {
				 ls.addlog(log);
				 request.getSession().setAttribute("email", em);
				 return new ModelAndView("userhome");
			 	}
			 
		 }
		 else if(c!=null && (c.getPassword().equals(log.getPassword()))) {
			 request.getSession().setAttribute("email",em);
	 		 return new ModelAndView("adminhome");
		 }
		 else if(d!=null&&(d.getPassword().equals(log.getPassword()))) {
			 request.getSession().setAttribute("email",em);
	 		 return new ModelAndView("polhome");
		 }
		 else {
		    return new ModelAndView("signup","sig",new signup());
		 }
	 }
	 @GetMapping("/viewall") 
	 //@ResponseBody
	    public ModelAndView getUsers() {
			List<signup> users = ss.getAllRecords();
			ModelAndView model = new ModelAndView();
			model.setViewName("viewusers");
			model.addObject("users", users);
			return model;
		}
	 @GetMapping("/viewpol") 
	 //@ResponseBody
	    public ModelAndView getpols() {
			List<politician> politicians = ps.getAllRecords();
			ModelAndView model = new ModelAndView();
			model.setViewName("viewpols");
			model.addObject("politicians", politicians);
			return model;
		}
	 @GetMapping("/viewpol1") 
	 //@ResponseBody
	    public ModelAndView getpols1() {
			List<politician> politicians = ps.getAllRecords();
			ModelAndView model = new ModelAndView();
			model.setViewName("viewpols1");
			model.addObject("politicians", politicians);
			return model;
		}
	 @GetMapping("/seemsg")
	 public ModelAndView getmsg(HttpSession session) {
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("msgs");
	    	return mv;
		 
		 
	 }
	 @PostMapping("/sendmes")
	 public ModelAndView sendmes() {
		 //politician d = ps.findemail(snm.getTo());
		 //signup a = ss.findemail(snm.getTo());
		 //Object a=request.getSession().getAttribute("emaiL");
		 //String b = snm.getFrom();
		 //boolean c = a.equals(b);
		 
		 //if(d!=null||a!=null){
			 //sms.sendmess(snm);
			 //return new ModelAndView("userhome");
			 
			 
		 //}
		 //else
			 //return new ModelAndView("adminhome");
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("sendm");
	    	return mv;
}
	 @GetMapping("/sendmesp")
	 public ModelAndView sendmesp() {
		 //politician d = ps.findemail(snm.getTo());
		 //signup a = ss.findemail(snm.getTo());
		 //Object a=request.getSession().getAttribute("emaiL");
		 //String b = snm.getFrom();
		 //boolean c = a.equals(b);
		 
		 //if(d!=null||a!=null){
			 //sms.sendmess(snm);
			 //return new ModelAndView("userhome");
			 
			 
		 //}
		 //else
			 //return new ModelAndView("adminhome");
		 ModelAndView mv=new ModelAndView();
	    	mv.setViewName("psendm");
	    	return mv;
}
	 @PostMapping("/sendmes1")
	 public ModelAndView sendmes1(@ModelAttribute("snm") sendmessage snm,HttpSession session) {
		 ModelAndView model = new ModelAndView();
		model.setViewName("msgs");
		return model;
	 }
	 @PostMapping("senm")
	public ModelAndView senm(@ModelAttribute("ssm") sentmessage ssm) {
		 List<sendmessage> msg=sms.findByFrom(ssm.getEmail());
		 ModelAndView model = new ModelAndView();
		model.setViewName("viewsmg");
		model.addObject("msg",msg);
		return model;
		 
	 }
	 @PostMapping("recm")
		public ModelAndView recm(@ModelAttribute("vvm") viewmessage vvm) {
			 List<sendmessage> msg=sms.findByTo(vvm.getEmail());
			 ModelAndView model = new ModelAndView();
			model.setViewName("viewmg");
			model.addObject("msg",msg);
			return model;
			 
		 }
	 @PostMapping("/send")
	 public ModelAndView send()
	    {
	    	ModelAndView mv=new ModelAndView();
	    	mv.setViewName("sendsubmit");
	    	return mv;
	    }
	 @PostMapping("/sendp")
	 public ModelAndView sendp()
	    {
	    	ModelAndView mv=new ModelAndView();
	    	mv.setViewName("psendsubmit");
	    	return mv;
	    }
	 @PostMapping("del1")
		public ModelAndView del(@ModelAttribute("d") delete d) {
		 signup a = ss.findemail(d.getEmail());
		 politician e = ps.findemail(d.getEmail());
		 if(a!=null) {
			 ss.deleteByEmail(d.getEmail());
			 return new ModelAndView("adminhome");
			 
		 }
		 else if(d!=null) {
			 ps.deleteByEmail(d.getEmail());
			 return new ModelAndView("adminhome");
		 }
		 else
			 return new ModelAndView("adminhome");
			 
		 }
	 @PostMapping("/adp")
	public ModelAndView adp(@ModelAttribute("ap") politician ap) {
		 politician a = ps.findemail(ap.getEmail());
		 if(a!=null) {

		    	ModelAndView mv=new ModelAndView();
		    	mv.setViewName("addpol");
		    	return mv;
		 }
		 else
		 {
			 ps.addpolitician(ap);
			 ModelAndView mv=new ModelAndView();
		    	mv.setViewName("adminhome");
		    	return mv;
			 
		 }
	 }
}
