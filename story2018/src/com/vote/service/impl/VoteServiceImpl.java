package com.vote.service.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Service;










import com.vote.dao.VoteDao;
import com.vote.model.VoteModel;
import com.vote.service.VoteService;
@Service 
public class VoteServiceImpl implements VoteService {
	@Resource 
    private VoteDao voteDao;
	@Override
	public String getDate() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
		java.util.Date date=new java.util.Date();  
		String str=sdf.format(date);
		return str;
	}
	@Override
	public double percent(int i,int n)
	{
		
		double result = (double)i / (double) n * 100;
		BigDecimal b = new BigDecimal(result); 
		result = b.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();  
		System.out.println("i和n的百分比为:" + result + "%");
		return result;
	}
	
	@Override
	public String getIpAddr(HttpServletRequest request) {
		// TODO Auto-generated method stub
		 String ip = request.getHeader("x-forwarded-for");   
		 System.out.println("ip:" +ip);
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {   
	           ip = request.getHeader("Proxy-Client-IP");   
	       }   
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {   
	           ip = request.getHeader("WL-Proxy-Client-IP");   
	       }   
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {   
	           ip = request.getRemoteAddr();   
	           if(ip.equals("127.0.0.1")){     
	               //根据网卡取本机配置的IP     
	               InetAddress inet=null;     
	               try {     
	                   inet = InetAddress.getLocalHost();     
	               } catch (UnknownHostException e) {     
	                   e.printStackTrace();     
	               }     
	               ip= inet.getHostAddress();    
	               System.out.println("ip1:" +ip);
	           }  
	       }   
	       // 对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割  
	       if(ip != null && ip.length() > 15){    
	           if(ip.indexOf(",")>0){     
	               ip = ip.substring(0,ip.indexOf(","));     
	           }     
	       }     
	       return ip;   
	}
	@Override
	public boolean iplog(VoteModel vm) {
		// TODO Auto-generated method stub
		 int i=voteDao.listIpQuerycount(vm);
		 if (i<5) {
			 return true;
		}else {
			return false;
		}
		
	}
	@Override
	public boolean voteadd1(VoteModel vm) {
		// TODO Auto-generated method stub
		voteDao.updateVoteADD1( vm);
		return true;
	}
	@Override
	public boolean insertlog(VoteModel vm) {
		// TODO Auto-generated method stub
		voteDao.insertIpSelective(vm);
		return true;
	}
	@Override
	public VoteModel queryVote(int id) {
		// TODO Auto-generated method stub
		VoteModel vm=new VoteModel();
	   vm=voteDao.selectByPrimaryKey(id);
		return vm;
	}
	@Override
	public List<VoteModel> queryVote() {
		// TODO Auto-generated method stub
		List<VoteModel> list=new ArrayList<VoteModel>();
		list=voteDao.listquery();
		return list;
	}
	@Override
	public boolean modifyVote(VoteModel vm) {
		// TODO Auto-generated method stub
		voteDao.updateVoteSelective(vm);
		return true;
	}
	
	@Override
	public  String getIpArea(String ip){  
		  String resout = "";
		  try{
		
		   String str = getJsonContent("http://ip.taobao.com/service/getIpInfo.php?ip="+ip);
			 // String str = getJsonContent("http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js&ip="+ip);
		  System.out.println(str);

		   JSONObject obj = JSONObject.fromObject(str);
		   JSONObject obj2 =  (JSONObject) obj.get("data");
		   String code = obj.get("code")+"";
		   if(code.equals("0")){
			   
		   // resout =  obj2.get("country")+"--" +obj2.get("area")+"--" +obj2.get("city")+"--" +obj2.get("isp");
			   resout = (String) obj2.get("region");
			   if (resout.equals("XX")) {
				   resout ="内网或者查询不到";
			}
		   }else{
		    resout =  "IP地址有误";
		   }
		  }catch(Exception e){

		   e.printStackTrace();
		    resout = "获取IP地址异常："+e.getMessage();
		  }
		  return resout;
  
	}
	public static String getJsonContent(String urlStr) throws InterruptedException
	{
	    try
	    {// 获取HttpURLConnection连接对象
	        URL url = new URL(urlStr);
	        HttpURLConnection httpConn = (HttpURLConnection) url
	                .openConnection();
	        // 设置连接属性
	       
	       httpConn.setConnectTimeout(3000);
	  
	        httpConn.setDoInput(true);
	        httpConn.setRequestMethod("GET");
	        // 获取相应码
	        int respCode = httpConn.getResponseCode();
	        if (respCode == 200)
	        {
	            return ConvertStream2Json(httpConn.getInputStream());
	        }
	    }
	    catch (MalformedURLException e)
	    {
	        e.printStackTrace();
	    }
	    catch (IOException e)
	    {
	        e.printStackTrace();
	    }
	    return "";
	}
	private static String ConvertStream2Json(InputStream inputStream)
	{
	    String jsonStr = "";
	    // ByteArrayOutputStream相当于内存输出流
	    ByteArrayOutputStream out = new ByteArrayOutputStream();
	    byte[] buffer = new byte[1024];
	    int len = 0;
	    // 将输入流转移到内存输出流中
	    try
	    {
	        while ((len = inputStream.read(buffer, 0, buffer.length)) != -1)
	        {
	            out.write(buffer, 0, len);
	        }
	        // 将内存流转换为字符串
	        jsonStr = new String(out.toByteArray());
	    }
	    catch (IOException e)
	    {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return jsonStr;
	}
	@Override
	public List<VoteModel> listip() {
		// TODO Auto-generated method stub
		List<VoteModel> list=new ArrayList<VoteModel>();
		 list=voteDao.listIp();
		 return list;
	}
	@Override
	public boolean updateVoteipArea(VoteModel vm) {
		// TODO Auto-generated method stub
		voteDao.updateVoteipArea(vm);
		return true;
	}
	@Override
	public int listIpcount() {
		// TODO Auto-generated method stub
		int i=voteDao.listIpcount();
		return i;
	}
	
	public List<String> listcity()
	
	{
		List<String> list=new ArrayList<String>();
		list.add("台湾");
		list.add("香港");
		list.add("澳门");
		list.add("北京");
		list.add("上海");
		list.add("天津");
		list.add("重庆");
		list.add("福建");
		list.add("河北");
		list.add("山西");
		list.add("辽宁");
		list.add("吉林");
		list.add("黑龙江");
		list.add("江苏");
		list.add("浙江");
		list.add("安徽");
		list.add("江西");
		list.add("山东");
		list.add("河南");
		list.add("湖北");
		list.add("湖南");
		list.add("广东");
		list.add("海南");
		list.add("四川");
		list.add("贵州");
		list.add("云南");
		list.add("陕西");
		list.add("甘肃");
		list.add("青海");
		list.add("广西");
		list.add("内蒙");
		list.add("西藏");
		list.add("宁夏");
		list.add("新疆");
		return list;
	}
	@Override
	public List<VoteModel> citycount(int n)
	{
		
		VoteServiceImpl vsi=new VoteServiceImpl();
		List<String> list=new ArrayList<String>();
		List<VoteModel> listcount=new ArrayList<VoteModel>();
		list=vsi.listcity();
		
	
		for (String ipArea : list) {
			VoteModel vm=new VoteModel();
			System.out.println(ipArea);
		int i=voteDao.citylike(ipArea);
		vm.setPercent(vsi.percent(i, n)+"%");   
	    vm.setCount(i);
		vm.setTotal(n);
		vm.setIpArea(ipArea);
		listcount.add(vm);
		}
	
		return listcount;
		
	}


	
}
