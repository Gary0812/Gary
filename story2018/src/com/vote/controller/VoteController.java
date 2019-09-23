package com.vote.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import threeDES.AESUtil;
import threeDES.ThreeDES;

import com.vote.model.VoteModel;
import com.vote.service.VoteService;


@PropertySource("classpath:code.properties") 
@Controller
public class VoteController {
	@Value("${ImageCode.sessionKey}")  
    private String sessionKey;  
	 @Autowired  
	    private VoteService voteservice;
	    private VoteModel vm;
	    
	    @RequestMapping("/sign") 
	    public ModelAndView Sign()
	    {
	    	ModelAndView mav=new ModelAndView();
	    	mav.setViewName("login");
			return mav;
	    }
	    
	    
	    
	    @RequestMapping("/index") 
	    public ModelAndView index()
	    {
	    	ModelAndView mav=new ModelAndView();
	    	List<VoteModel> list=new ArrayList<VoteModel>();
	    	list=voteservice.queryVote();
	    	mav.setViewName("votes");
	    	
	    	mav.addObject("list", list);
			return mav;
	    }
	    @RequestMapping("/login") 
	    public ModelAndView login(HttpServletRequest request)
	    {
	    	ModelAndView mav=new ModelAndView();
	    	String scode = (String) request.getSession().getAttribute(sessionKey);
	    	String code=request.getParameter("code");
	    	String user= request.getParameter("user");
	    	String password=request.getParameter("password");
	    if (scode.equals(code)) {
	    	if(user.equals("voteadmin")&&password.equals("gRGbHujIOdFe7G"))
	    	{
	    		List<VoteModel> list=new ArrayList<VoteModel>();
		    	list=voteservice.queryVote();
		    	mav.setViewName("modify");
		    	mav.addObject("list", list);
		    	 HttpSession session = getSession();
		  	      session.setAttribute("user",password);
	    	}else {
	    		mav.setViewName("login");
			}
		}
	    	else {
	    		mav.addObject("errorMsg", "验证码错误");
	    		mav.setViewName("login");
			}
	    	
	    	
			return mav;
	    }
	    
	    @RequestMapping("/result") 
	    public ModelAndView result()
	    {
	    	ModelAndView mav=new ModelAndView();
	    	List<VoteModel> list=new ArrayList<VoteModel>();
	    	list=voteservice.queryVote();
	    	mav.setViewName("result");
	    	
	    	mav.addObject("list", list);
			return mav;
	    }
	    
	    /*	  @RequestMapping(value="/modify")
	    public  ModelAndView modify(@RequestParam(value="id") String id, @RequestParam(value="vote_f") int vote_f){
	    	 
	    	ModelAndView mav=new ModelAndView();
	   id=id.replaceAll(" ", "+");
	    	int ids=Integer.parseInt(ThreeDES.crypt(id, 2));
	    	
	    	    	 vm=new VoteModel();
	    	    	 vm.setId(ids);
	    	    	 vm.setVote_f(vote_f);
	    	    	 HttpSession session = getSession();
	    	    	 String user =(String) session.getAttribute("user");
	    	    	 if (user==null) {
	    	    		 mav.setViewName("redirect:/sign");
	    	    		 
	    			}else {
	    				 voteservice.modifyVote(vm);
	    				    
	    		    	 List<VoteModel> list=new ArrayList<VoteModel>();
	    			    	list=voteservice.queryVote();
	    			    	mav.setViewName("modify");
	    			    	mav.addObject("list", list);
	    			}
	    	    	
	    	    	 return mav;
	    	
	    	
	    	
	    }  //base64 */
	    
	    
	    @RequestMapping("/modify/{id}/{vote_f}" )//AES加密
		 public ModelAndView modify(@PathVariable String id,@PathVariable int vote_f)
		 {	 ModelAndView mav=new ModelAndView();
         int ids=Integer.parseInt(AESUtil.decrypt(id));
	    	 vm=new VoteModel();
	    	 vm.setId(ids);
	    	 vm.setVote_f(vote_f);
	    	 HttpSession session = getSession();
	    	 String user =(String) session.getAttribute("user");
	    	 if (user==null) {
	    		 mav.setViewName("redirect:/sign");
	    		 
			}else {
				 voteservice.modifyVote(vm);
				    
		    	 List<VoteModel> list=new ArrayList<VoteModel>();
			    	list=voteservice.queryVote();
			    	mav.setViewName("modify");
			    	mav.addObject("list", list);
			}
	    	
	    	 return mav;
		 }
	    
	    
	 @RequestMapping(value = "/vote",method=RequestMethod.POST ) 
	 @ResponseBody
	    public synchronized VoteModel  vote( @RequestParam String id,HttpServletRequest request,HttpServletResponse response ,String code) {  
		 
		 String scode = (String) request.getSession().getAttribute(sessionKey);
		 if (scode.equals(code)) {
		 //id=request.getParameter("id");
		 System.out.println(id);
	
		 String ip=voteservice.getIpAddr(request);
		 String time=voteservice.getDate();
		// String area=voteservice.getIpArea(ip);
		 vm=new VoteModel();
		 vm.setIp(ip);
		 vm.setTime(time);
		 /*vm.setIpArea(area);
		 System.out.println("123:"+area);*/
		 if (voteservice.iplog(vm)) {
		boolean a=voteservice.insertlog(vm);
			 vm.setId(Integer.parseInt(id));
			 boolean b=	 voteservice.voteadd1(vm);
			 vm=new VoteModel();
			 if (a&&b) {
				 vm= voteservice.queryVote(Integer.parseInt(id));
				 vm.setMessage("投票成功！");
			}else{
				vm= voteservice.queryVote(Integer.parseInt(id));
				 vm.setMessage("出问题了！");
			}
			
			
		}else{
			 vm= voteservice.queryVote(Integer.parseInt(id));
			 vm.setMessage("今天已经投满了，请明天再投");
		}
		 }
		 else {
			 vm= voteservice.queryVote(Integer.parseInt(id));
			 vm.setMessage("验证码错误");
		}
		 return vm;
	
	 }
	 
	 @RequestMapping("/updateArea") 
	    public void updateArea() throws InterruptedException
	    {
		 int i=voteservice.listIpcount();
		 System.out.println("ip总数为："+i );
		 List<VoteModel> list=new ArrayList<VoteModel>();
	    	list=voteservice.listip();
	    	 vm=new VoteModel();
	    	for (VoteModel voteModel : list) {
	    		vm.setId(voteModel.getId());
	    		extracted();
	    		String area=voteservice.getIpArea(voteModel.getIp());
	    		vm.setIpArea(area);
	    		voteservice.updateVoteipArea(vm);
				
			}
		
	    }



	private void extracted() throws InterruptedException { 
		Thread.currentThread();
		Thread.sleep(1000);
	}
	   @RequestMapping("/listcount") 
	    public ModelAndView listcount()
	    {   int i=voteservice.listIpcount();
		 System.out.println("ip总数为："+i );
	    	ModelAndView mav=new ModelAndView();
	    	List<VoteModel> list=new ArrayList<VoteModel>();
	    	list=voteservice.citycount(i);
	    	mav.setViewName("listcount");
	    	 
	    	mav.addObject("list", list);
			return mav;
	    }
	 
	 
	 public static HttpServletRequest getRequest() { 
	    	ServletRequestAttributes attrs =(ServletRequestAttributes) RequestContextHolder.getRequestAttributes(); 
	    	return attrs.getRequest(); 
	    } 
	 public static HttpSession getSession() { 
	    	HttpSession session = null; 
	    	try { 
	    		session = getRequest().getSession(); 
	    	} catch (Exception e) {} 
	    		return session; 
	    } 
}
