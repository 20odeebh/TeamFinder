package kr.co.multi.teamfinder.dto;

public class User {
	private int user_index;
	private String user_id;
	private String user_pwd;
	private String user_image;
	private String user_stack;
	private String user_email;
	private String region;
	
	public User(int user_index, String user_id, String user_pwd, String user_image, String user_stack,
			String user_email, String region) {
		super();
		this.user_index = user_index;
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_image = user_image;
		this.user_stack = user_stack;
		this.user_email = user_email;
		this.region = region;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public User() {
	}

	public User(int user_index, String user_id, String user_pwd, String user_image, String user_stack,
			String user_email) {
		this.user_index = user_index;
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_image = user_image;
		this.user_stack = user_stack;
		this.user_email = user_email;
	}

	public int getUser_index() {
		return user_index;
	}

	public void setUser_index(int user_index) {
		this.user_index = user_index;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_image() {
		return user_image;
	}

	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}

	public String getUser_stack() {
		return user_stack;
	}

	public void setUser_stack(String user_stack) {
		this.user_stack = user_stack;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	@Override
	public String toString() {
		return "User [user_index=" + user_index + ", user_id=" + user_id + ", user_pwd=" + user_pwd + ", user_image="
				+ user_image + ", user_stack=" + user_stack + ", user_email=" + user_email + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((user_email == null) ? 0 : user_email.hashCode());
		result = prime * result + ((user_id == null) ? 0 : user_id.hashCode());
		result = prime * result + ((user_image == null) ? 0 : user_image.hashCode());
		result = prime * result + user_index;
		result = prime * result + ((user_pwd == null) ? 0 : user_pwd.hashCode());
		result = prime * result + ((user_stack == null) ? 0 : user_stack.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (user_email == null) {
			if (other.user_email != null)
				return false;
		} else if (!user_email.equals(other.user_email))
			return false;
		if (user_id == null) {
			if (other.user_id != null)
				return false;
		} else if (!user_id.equals(other.user_id))
			return false;
		if (user_image == null) {
			if (other.user_image != null)
				return false;
		} else if (!user_image.equals(other.user_image))
			return false;
		if (user_index != other.user_index)
			return false;
		if (user_pwd == null) {
			if (other.user_pwd != null)
				return false;
		} else if (!user_pwd.equals(other.user_pwd))
			return false;
		if (user_stack == null) {
			if (other.user_stack != null)
				return false;
		} else if (!user_stack.equals(other.user_stack))
			return false;
		return true;
	}
	
}