package org.kor.mv.mybatis.pojo;

public class SysUser {
    private String id;

	private String username;

	private String password;

	private String salt;

	private String locked;

	private String emloyeeid;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt == null ? null : salt.trim();
	}

	public String getLocked() {
		return locked;
	}

	public void setLocked(String locked) {
		this.locked = locked == null ? null : locked.trim();
	}

	public String getEmloyeeid() {
		return emloyeeid;
	}

	public void setEmloyeeid(String emloyeeid) {
		this.emloyeeid = emloyeeid == null ? null : emloyeeid.trim();
	}
}