package model.person;

public class EmployeePosition {
    private int id;
    private String name;
    private int status;


    public EmployeePosition(int id, String name,int status) {
        this.id = id;
        this.name = name;
        this.status = status;
    }

    public EmployeePosition(int employeePosition) {
        this.id = employeePosition;
    }

    public EmployeePosition(int employeePosition, String employee_position_name) {
        this.id = employeePosition;
        this.name = employee_position_name;
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
