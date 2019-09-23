package com.vote.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.vote.model.VoteModel;

public interface VoteService {
	public String getDate() ;
	public double percent(int i,int n);
	public String getIpAddr(HttpServletRequest request);
	public	boolean  iplog(VoteModel vm);
	public	boolean  voteadd1(VoteModel vm);
	public  boolean  insertlog(VoteModel vm);
	public VoteModel queryVote(int id);
	public List<VoteModel> queryVote();
	public boolean modifyVote(VoteModel vm);
	public  String getIpArea(String ip);
	public List<VoteModel> listip();
	public boolean updateVoteipArea(VoteModel vm);
	public	int  listIpcount();
	public List<VoteModel> citycount(int n);
}
