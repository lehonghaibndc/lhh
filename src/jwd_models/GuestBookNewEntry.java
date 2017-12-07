package jwd_models;

public class GuestBookNewEntry {
    String  namepage;
    String content;

    public String getNamepage() {
        return namepage;
    }

    public void setNamepage(String namepage) {
        this.namepage = namepage;
    }

    public GuestBookNewEntry(String namepage, String content) {
        this.namepage = namepage;
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
