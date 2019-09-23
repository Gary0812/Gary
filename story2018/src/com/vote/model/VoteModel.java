package com.vote.model;

public class VoteModel {
	private String name;
	private int id;
	private int vote_f;
	private int vote_t;
	private String ip;
	private String time;
	private String img;
	private String subject;
	private String link;
	private String ipArea;
	private int total;
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getIpArea() {
		return ipArea;
	}
	public void setIpArea(String ipArea) {
		this.ipArea = ipArea;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link== null ? null : link.trim();;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	private String message;
	private String percent;
	private int count;

	@Override
	public String toString() {
		return "VoteModel [name=" + name + ", id=" + id + ", vote_f=" + vote_f
				+ ", vote_t=" + vote_t + ", ip=" + ip + ", time=" + time
				+ ", img=" + img + ", subject=" + subject + ", link=" + link
				+ ", ipArea=" + ipArea + ", total=" + total + ", message="
				+ message + ", percent=" + percent + ", count=" + count + "]";
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getVote_f() {
		return vote_f;
	}
	public void setVote_f(int vote_f) {
		this.vote_f = vote_f;
	}
	public int getVote_t() {
		return vote_t;
	}
	public void setVote_t(int vote_t) {
		this.vote_t = vote_t;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip == null ? null : ip.trim();
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time == null ? null : time.trim();
	}
	public String getPercent() {
		return percent;
	}
	public void setPercent(String percent) {
		this.percent = percent == null ? null : percent.trim();
	}

}
