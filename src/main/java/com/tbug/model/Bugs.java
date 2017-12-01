package com.tbug.model;

import java.io.Serializable;
import java.util.Date;

public class Bugs implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 玩家账号
     */
    private String openId;

    /**
     * 玩家Id
     */
    private String playerId;

    /**
     * 玩家名字
     */
    private String playerName;

    /**
     * 玩家描述
     */
    private String descs;

    /**
     * 记录时间
     */
    private Date createTime;

    /**
     * 项目名字
     */
    private String folder;

    /**
     * bugs
     */
    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId == null ? null : openId.trim();
    }

    public String getPlayerId() {
        return playerId;
    }

    public void setPlayerId(String playerId) {
        this.playerId = playerId == null ? null : playerId.trim();
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName == null ? null : playerName.trim();
    }

    public String getDescs() {
        return descs;
    }

    public void setDescs(String descs) {
        this.descs = descs == null ? null : descs.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getFolder() {
        return folder;
    }

    public void setFolder(String folder) {
        this.folder = folder == null ? null : folder.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", openId=").append(openId);
        sb.append(", playerId=").append(playerId);
        sb.append(", playerName=").append(playerName);
        sb.append(", descs=").append(descs);
        sb.append(", createTime=").append(createTime);
        sb.append(", folder=").append(folder);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}