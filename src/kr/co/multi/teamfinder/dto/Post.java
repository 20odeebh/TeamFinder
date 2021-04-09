package kr.co.multi.teamfinder.dto;

import java.sql.Date;

public class Post {
	private int post_id;
	private String title;
	private int user_index;
	private String context;
	private String project_period;
	private String region;
	private String meeting_method;
	private String recruiting_number;
	private String team_image;
	private String project_stack;
	private Date upload_time;
	private int board_type;
	
	private User user;
	
	

	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public Post(int post_id, String title, int user_index, String context, String project_period, String region,
			String meeting_method, String recruiting_number, String team_image, String project_stack, Date upload_time,
			int board_type, User user) {
		this.post_id = post_id;
		this.title = title;
		this.user_index = user_index;
		this.context = context;
		this.project_period = project_period;
		this.region = region;
		this.meeting_method = meeting_method;
		this.recruiting_number = recruiting_number;
		this.team_image = team_image;
		this.project_stack = project_stack;
		this.upload_time = upload_time;
		this.board_type = board_type;
		this.user = user;
	}


	public Post(int post_id, String title, int user_index, String context, String project_period, String region,
			String meeting_method, String recruiting_number, String team_image, String project_stack, Date upload_time,
			int board_type) {
		super();
		this.post_id = post_id;
		this.title = title;
		this.user_index = user_index;
		this.context = context;
		this.project_period = project_period;
		this.region = region;
		this.meeting_method = meeting_method;
		this.recruiting_number = recruiting_number;
		this.team_image = team_image;
		this.project_stack = project_stack;
		this.upload_time = upload_time;
		this.board_type = board_type;
	}


	public String getProject_period() {
		return project_period;
	}


	public void setProject_period(String project_period) {
		this.project_period = project_period;
	}
	
	public Post() {
	}


	public Post(int post_id, String title, int user_index, String context, String region, String meeting_method,
			String recruiting_number, String team_image, String project_stack, Date upload_time, int board_type) {
		this.post_id = post_id;
		this.title = title;
		this.user_index = user_index;
		this.context = context;
		this.region = region;
		this.meeting_method = meeting_method;
		this.recruiting_number = recruiting_number;
		this.team_image = team_image;
		this.project_stack = project_stack;
		this.upload_time = upload_time;
		this.board_type = board_type;
	}


	public int getPost_id() {
		return post_id;
	}


	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public int getUser_index() {
		return user_index;
	}


	public void setUser_index(int user_index) {
		this.user_index = user_index;
	}


	public String getContext() {
		return context;
	}


	public void setContext(String context) {
		this.context = context;
	}


	public String getRegion() {
		return region;
	}


	public void setRegion(String region) {
		this.region = region;
	}


	public String getMeeting_method() {
		return meeting_method;
	}


	public void setMeeting_method(String meeting_method) {
		this.meeting_method = meeting_method;
	}


	public String getRecruiting_number() {
		return recruiting_number;
	}


	public void setRecruiting_number(String recruiting_number) {
		this.recruiting_number = recruiting_number;
	}


	public String getTeam_image() {
		return team_image;
	}


	public void setTeam_image(String team_image) {
		this.team_image = team_image;
	}


	public String getProject_stack() {
		return project_stack;
	}


	public void setProject_stack(String project_stack) {
		this.project_stack = project_stack;
	}


	public Date getUpload_time() {
		return upload_time;
	}


	public void setUpload_time(Date upload_time) {
		this.upload_time = upload_time;
	}


	public int getBoard_type() {
		return board_type;
	}


	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}


	@Override
	public String toString() {
		return "Post [post_id=" + post_id + ", title=" + title + ", user_index=" + user_index + ", context=" + context
				+ ", project_period=" + project_period + ", region=" + region + ", meeting_method=" + meeting_method
				+ ", recruiting_number=" + recruiting_number + ", team_image=" + team_image + ", project_stack="
				+ project_stack + ", upload_time=" + upload_time + ", board_type=" + board_type + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + board_type;
		result = prime * result + ((context == null) ? 0 : context.hashCode());
		result = prime * result + ((meeting_method == null) ? 0 : meeting_method.hashCode());
		result = prime * result + post_id;
		result = prime * result + ((project_stack == null) ? 0 : project_stack.hashCode());
		result = prime * result + ((recruiting_number == null) ? 0 : recruiting_number.hashCode());
		result = prime * result + ((region == null) ? 0 : region.hashCode());
		result = prime * result + ((team_image == null) ? 0 : team_image.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((upload_time == null) ? 0 : upload_time.hashCode());
		result = prime * result + user_index;
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
		Post other = (Post) obj;
		if (board_type != other.board_type)
			return false;
		if (context == null) {
			if (other.context != null)
				return false;
		} else if (!context.equals(other.context))
			return false;
		if (meeting_method == null) {
			if (other.meeting_method != null)
				return false;
		} else if (!meeting_method.equals(other.meeting_method))
			return false;
		if (post_id != other.post_id)
			return false;
		if (project_stack == null) {
			if (other.project_stack != null)
				return false;
		} else if (!project_stack.equals(other.project_stack))
			return false;
		if (recruiting_number == null) {
			if (other.recruiting_number != null)
				return false;
		} else if (!recruiting_number.equals(other.recruiting_number))
			return false;
		if (region == null) {
			if (other.region != null)
				return false;
		} else if (!region.equals(other.region))
			return false;
		if (team_image == null) {
			if (other.team_image != null)
				return false;
		} else if (!team_image.equals(other.team_image))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (upload_time == null) {
			if (other.upload_time != null)
				return false;
		} else if (!upload_time.equals(other.upload_time))
			return false;
		if (user_index != other.user_index)
			return false;
		return true;
	}
	
}