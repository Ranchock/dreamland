package wang.dreamland.www.entity;


public class UserMessage {
    private Long id;

    private Long uId;

    private String Message;

    @Override
    public String toString() {
        return "UserMessage{" +
                "id=" + id +
                ", uId=" + uId +
                ", Message='" + Message + '\'' +
                '}';
    }

    public String getMessage() {
        return Message;
    }

    public void setMessage(String message) {
        Message = message;
    }

    public Long getuId() {
        return uId;
    }

    public void setuId(Long uId) {
        this.uId = uId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
