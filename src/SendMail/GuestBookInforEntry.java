package SendMail;

public class GuestBookInforEntry {
    String User;
    String Gmail;
    String ID;
    String Phone;
    String Date;
    String Name;
    String Pass;
    String Code;
    public  GuestBookInforEntry(String User,String Gmail,String ID, String Phone,String Date,String Name,String Pass,String Code)
    {
        this.Date=Date;
        this.Gmail=Gmail;
        this.ID=ID;
        this.Name=Name;
        this.Phone=Phone;
        this.User=User;
        this.Pass=Pass;
        this.Code=Code;
    }

    public void setCode(String code) {
        Code = code;
    }

    public String getCode() {
        return Code;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {

    }

    public String getGmail() {
        return Gmail;
    }

    public void setGmail(String gmail) {
        Gmail = gmail;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String pass) {
        Pass = pass;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String user) {
        User = user;
    }

}
