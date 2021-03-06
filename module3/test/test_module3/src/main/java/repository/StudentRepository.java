package repository;

import model.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentRepository implements IStudentRepository {
    private BaseStudentRepository baseStudentRepository = new BaseStudentRepository();



    @Override
    public List<Student> selectAllStudent() {
        List<Student> students = new ArrayList<>();
        Connection connection = this.baseStudentRepository.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from students");
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                Double point = resultSet.getDouble("point");
                Integer gender = resultSet.getInt("gender");
                students.add(new Student(id, name, point, gender));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

    @Override
    public void add(Student student) {
        Connection connection = this.baseStudentRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into students(id,name,point,gender) value (?,?,?,?);");
            preparedStatement.setInt(1, student.getId());
            preparedStatement.setString(2, student.getName());
            preparedStatement.setDouble(3, student.getPoint());
            preparedStatement.setInt(4, student.getGender());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(Student student) {
        Connection connection = baseStudentRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("update students set name =?,point =?, gender =? where id=?;");
            preparedStatement.setString(1, student.getName());
            preparedStatement.setDouble(2, student.getPoint());
            preparedStatement.setInt(3, student.getGender());
            preparedStatement.setInt(4, student.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        Connection connection = baseStudentRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(" delete from students where id = ?;");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Student> searchByName(String name) {
        List<Student> students = new ArrayList<>();
        Connection connection = baseStudentRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from student.students where name like ? ;");
            preparedStatement.setString(1, "%" + name + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String names = resultSet.getString("name");
                Double point = resultSet.getDouble("point");
                Integer gender = resultSet.getInt("gender");
                students.add(new Student(id, names, point, gender));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

    @Override
    public List<Student> sortByName() {
        List<Student> students = new ArrayList<>();
        Connection connection = baseStudentRepository.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from student.students order by name;");
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String names = resultSet.getString("name");
                Double point = resultSet.getDouble("point");
                Integer gender = resultSet.getInt("gender");
                students.add(new Student(id, names, point, gender));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

}
