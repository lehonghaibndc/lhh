package jwd_models;

public class GuestBookTopicEntry {
    String namstu;
    String nametopic;
    Float score;

    public GuestBookTopicEntry(String namstu, String nametopic, Float score) {
        this.namstu = namstu;
        this.nametopic = nametopic;
        this.score = score;
    }

    public String getNamstu() {
        return namstu;
    }

    public void setNamstu(String namstu) {
        this.namstu = namstu;
    }

    public String getNametopic() {
        return nametopic;
    }

    public void setNametopic(String nametopic) {
        this.nametopic = nametopic;
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }
}