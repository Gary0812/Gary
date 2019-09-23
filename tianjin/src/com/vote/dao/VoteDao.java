package com.vote.dao;

import java.util.List;

import com.vote.model.VoteModel;



public interface VoteDao {
	 List<VoteModel> listquery();//查询被投票人信息列表
	 List<VoteModel> listIpQuery(VoteModel vm);//查询ip信息列表
	 int	 insertVoteSelective(VoteModel vm);//增加被投票人信息
	 int   insertIpSelective(VoteModel vm);//插入ip信息
	 VoteModel 	 selectByPrimaryKey(int id);//查询票数
	 int updateVoteSelective(VoteModel vm);//修改投票信息
	 int listIpQuerycount(VoteModel vm);//查询同一日同一ip投票数量
	 int updateVoteADD1(VoteModel vm);//增加投票
	 List<VoteModel> listIp();
	 int updateVoteipArea(VoteModel vm);
	 int listIpcount();
	 int citylike(String ipArea);
	 
}
