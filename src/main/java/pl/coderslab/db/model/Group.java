package pl.coderslab.db.model;

public class Group {
    private int id;
    private String name;
    public Group(){};
    public Group(String name, int user_group_id){
        this.name = name;
        this.id = user_group_id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
