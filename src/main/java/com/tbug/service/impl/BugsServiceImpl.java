package com.tbug.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tbug.mapper.BugsMapper;
import com.tbug.model.Bugs;
import com.tbug.model.BugsExample;
import com.tbug.service.BugsService;
import com.tbug.utils.ToolUtils;
@Service
public class BugsServiceImpl implements BugsService {
	
	@Resource
	private BugsMapper mapper;
	@Override
	public void insert(Bugs t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}

	@Override
	public void update(Bugs t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKey(t);
	}

	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}

	@Override
	public Bugs findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Bugs> getBugs(Date startDate, Date endDate, String openId, String playerId, String name, String desc,String folder) {
		// TODO Auto-generated method stub
		BugsExample example = new BugsExample();
		BugsExample.Criteria criteria = example.createCriteria();
		if (startDate != null && endDate != null){
			criteria.andCreateTimeBetween(startDate, endDate);
		}
		
		if (!ToolUtils.isStringNull(openId)){
			criteria.andOpenIdEqualTo(openId);
		}
		
		if (!ToolUtils.isStringNull(playerId)){
			criteria.andPlayerIdEqualTo(playerId);
		}
		if (!ToolUtils.isStringNull(folder)){
			criteria.andFolderEqualTo(folder);
		}
		
		if (!ToolUtils.isStringNull(name)){
			criteria.andPlayerNameLike("%"+name+"%");
		}
		
		if (!ToolUtils.isStringNull(desc)){
			criteria.andDescsLike("%"+desc+"%");
		}
		
		example.setOrderByClause("create_time desc");
		
		
		return mapper.selectByExample(example);
	}

}
