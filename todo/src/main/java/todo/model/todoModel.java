package todo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class todoModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String topic;
	private String description;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date deadLine;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getDeadLine() {
		return deadLine;
	}
	public void setDeadLine(Date deadLine) {
		this.deadLine = deadLine;
	}
	public todoModel(int id, String topic, String description, Date deadLine) {
		super();
		this.id = id;
		this.topic = topic;
		this.description = description;
		this.deadLine = deadLine;
	}
	@Override
	public String toString() {
		return "todoModel [id=" + id + ", topic=" + topic + ", description=" + description + ", deadLine=" + deadLine
				+ "]";
	}
	
	
	
}
