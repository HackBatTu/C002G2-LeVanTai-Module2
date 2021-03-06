use quan_li_sinh_vien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select max(credit) from subjects;

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select subjects.*,marks.mark from subjects
left join marks on subjects.sub_id = marks.sub_id
where mark  = ( select max(mark) from marks);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select student.*, avg(mark) as diem_tb from student
left join marks on student.student_id = marks.student_id
group by student_id
order by student_id desc, student_name ;