package wang.dreamland.www.entity;


public class UserMessage {
    private Long id;

    private Long uId;

    private String Message;

    private String imgUrl;

    private String nickName;

    @Override
    public String toString() {
        return "UserMessage{" +
                "id=" + id +
                ", uId=" + uId +
                ", Message='" + Message + '\'' +
                '}';
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
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
