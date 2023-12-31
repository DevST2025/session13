package ra.accademy.model;

public class Person {
    private int id;
    private String name;
    private int age;
    private String address;
    private boolean gender;

    public Person() {
    }

    public Person(String name, int age, String address, boolean gender) {
        this.name = name;
        this.age = age;
        this.address = address;
        this.gender = gender;
    }

    public Person(int id, String name, int age, String address, boolean gender) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.address = address;
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }
}
