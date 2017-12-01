package com.tbug.mapper;

import com.tbug.model.Bugs;
import com.tbug.model.BugsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BugsMapper {
    long countByExample(BugsExample example);

    int deleteByExample(BugsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Bugs record);

    int insertSelective(Bugs record);

    List<Bugs> selectByExample(BugsExample example);

    Bugs selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Bugs record, @Param("example") BugsExample example);

    int updateByExample(@Param("record") Bugs record, @Param("example") BugsExample example);

    int updateByPrimaryKeySelective(Bugs record);

    int updateByPrimaryKey(Bugs record);
}