package jwd_models;

import java.sql.Date;

public class GuestBookAccEntry {
    String nameuser;
    String position;
    String fullname;
    Date datetime;
    String id;
    String numphone;
    String avatar;
    String gmail;

    public GuestBookAccEntry(String nameuser,String position,String fullname,Date datetime,String id,String numphone,String avatar,String gmail)
    {
        this.nameuser=nameuser;
        this.position=position;

        this.fullname=fullname;
        this.datetime=datetime;
        this.id=id;
        this.numphone=numphone;
        this.avatar=avatar;
        this.gmail=gmail;
    }

    public String getFullname() {
        return fullname;
    }

    public Date getDatetime() {
        return datetime;
    }

    public String getId() {
        return id;
    }

    public String getNumphone() {
        return numphone;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setNumphone(String numphone) {
        this.numphone = numphone;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }


    public String getNameuser() {
        return nameuser;
    }

    public void setNameuser(String nameuser) {
        this.nameuser = nameuser;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }



}
