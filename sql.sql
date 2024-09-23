drop table boys_hostel  cascade constraints;
drop table room  cascade constraints;
drop table student  cascade constraints;
drop table mess  cascade constraints;
drop table staff  cascade constraints;
drop table Furniture  cascade constraints;
drop table visitor  cascade constraints;
drop table Fee  cascade constraints;

CREATE TABLE boys_hostel (
    hostel_id NUMBER NOT NULL,
    no_of_rooms NUMBER NOT NULL,
    no_of_student NUMBER NOT NULL,
    annual_expenses NUMBER NOT NULL,
    locationn VARCHAR(10) NOT NULL,
    PRIMARY KEY (hostel_id)
);

CREATE TABLE room (
    room_id NUMBER NOT NULL,
    capacity NUMBER NOT NULL,
    hostel_id NUMBER NOT NULL,
    name_of_student VARCHAR(40) NOT NULL,
    room_status VARCHAR(10) NOT NULL,
    PRIMARY KEY (room_id),
    FOREIGN KEY (hostel_id) REFERENCES boys_hostel(hostel_id)
);
select * from student;

CREATE TABLE student (
    student_id NUMBER NOT NULL,
    student_name VARCHAR(40) NOT NULL,
    student_father_name VARCHAR(40),
    department VARCHAR(30) NOT NULL,
    address VARCHAR(40) NOT NULL,
    cell_no VARCHAR(20) NOT NULL,
    student_age NUMBER NOT NULL,
    student_DOB VARCHAR(15) NOT NULL,
    hostel_id NUMBER NOT NULL,
    room_id NUMBER NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (hostel_id) REFERENCES boys_hostel(hostel_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);

CREATE TABLE mess (
    mess_incharge_Id VARCHAR(20) NOT NULL,
    monthly_avg_expense VARCHAR(30) NOT NULL,
    mess_bf_timing VARCHAR(45) NOT NULL,
    mess_dinner_timing VARCHAR(45) NOT NULL,
    sunday_bf_timing VARCHAR(45) NOT NULL,
    PRIMARY KEY (mess_incharge_Id)
);

CREATE TABLE staff (
    emp_name VARCHAR(40) NOT NULL,
    emp_id NUMBER NOT NULL,
    emp_address VARCHAR(50) NOT NULL,
    emp_salary NUMBER NOT NULL,
    emp_cellno VARCHAR(20) NOT NULL,
    hostel_id NUMBER NOT NULL,
    emp_designation VARCHAR(40) NOT NULL,
    mess_incharge_Id VARCHAR(20),
    PRIMARY KEY (emp_id),
    FOREIGN KEY (hostel_id) REFERENCES boys_hostel(hostel_id),
    FOREIGN KEY (mess_incharge_Id) REFERENCES mess(mess_incharge_Id)
);

CREATE TABLE visitor (
    visitor_id NUMBER NOT NULL,
    student_id NUMBER NOT NULL,
    visitor_name VARCHAR(40) NOT NULL,
    visitor_time_in VARCHAR(40) NOT NULL,
    visitor_time_out VARCHAR(40) NOT NULL,
    date_entering VARCHAR(24) NOT NULL,
    PRIMARY KEY (visitor_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

CREATE TABLE furniture (
    furniture_id VARCHAR(34) NOT NULL,
    room_id NUMBER NOT NULL,
    furniture_type VARCHAR(40) NOT NULL,
    PRIMARY KEY (furniture_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);

CREATE TABLE Fee (
    fee_month_year VARCHAR(40) NOT NULL,
    fee_status VARCHAR(40) NOT NULL,
    student_id NUMBER NOT NULL,
    student_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (fee_month_year, student_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);





INSERT INTO boys_hostel (hostel_id, no_of_rooms, no_of_student, annual_expenses, locationn) VALUES (1, 25, 18, 1000000, 'A-block');
INSERT INTO boys_hostel (hostel_id, no_of_rooms, no_of_student, annual_expenses, locationn) VALUES (2, 25, 18, 1000000, 'B-block');
INSERT INTO boys_hostel (hostel_id, no_of_rooms, no_of_student, annual_expenses, locationn) VALUES (3, 25, 17, 1000000, 'C-block');
INSERT INTO boys_hostel (hostel_id, no_of_rooms, no_of_student, annual_expenses, locationn) VALUES (4, 25, 17, 1000000, 'Shayadri');


INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES (1, 3, 1, 'Rajesh Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(2, 3, 1, 'Ankit Verma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(3, 3, 1, 'Vikas Singh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(4, 3, 1, 'Rohit Sharma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(5, 3, 1, 'Deepak Chawla', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(6, 3, 1, 'Prateek Ghosh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(7, 3, 1, 'Suresh Mishra', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(8, 3, 1, 'Manoj Tiwari', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(9, 3, 1, 'Kunal Patel', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(10, 3, 1, 'Naveen Reddy', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(11, 3, 1, 'Harish Chandra', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(12, 3, 1, 'Vikrant Gupta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(13, 3, 1, 'Anil Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(14, 3, 1, 'Sunil Singh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(15, 3, 1, 'Nitin Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(16, 3, 1, 'Ashok Jain', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(17, 3, 1, 'Bharat Joshi', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(18, 3, 1, 'Arjun Rao', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(19, 3, 1, 'Prashant Jha', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(20, 3, 1, 'Ramesh Yadav', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(21, 3, 1, 'Sanjay Kapoor', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(22, 3, 1, 'Mahesh Nair', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(23, 3, 1, 'Vinod Gupta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(24, 3, 1, 'Aman Verma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(25, 3, 1, 'Abhishek Singh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(26, 3, 2, 'Amit Sharma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(27, 3, 2, 'Ravi Patel', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(28, 3, 2, 'Saurabh Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(29, 3, 2, 'Vivek Ranjan', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(30, 3, 2, 'Sumit Roy', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(31, 3, 2, 'Rahul Joshi', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(32, 3, 2, 'Akash Verma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(33, 3, 2, 'Lokesh Rao', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(34, 3, 2, 'Shashank Mishra', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(35, 3, 2, 'Yash Gupta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(36, 3, 2, 'Ajay Sinha', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(37, 3, 2, 'Kartik Tyagi', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(38, 3, 2, 'Akhil Sharma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(39, 3, 2, 'Gaurav Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(40, 3, 2, 'Siddharth Singh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(41, 3, 2, 'Manish Jain', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(42, 3, 2, 'Pankaj Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(43, 3, 2, 'Rakesh Rao', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(44, 3, 2, 'Nitin Verma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(45, 3, 2, 'Shivam Thakur', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(46, 3, 2, 'Anuj Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(47, 3, 2, 'Ashish Roy', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(48, 3, 2, 'Suraj Gupta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(49, 3, 2, 'Rajat Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(50, 3, 2, 'Rohan Sharma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(51, 3, 3, 'Mohit Gupta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(52, 3, 3, 'Rakesh Yadav', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(53, 3, 3, 'Nikhil Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(54, 3, 3, 'Kunal Singh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(55, 3, 3, 'Manoj Pandey', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(56, 3, 3, 'Ajay Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(57, 3, 3, 'Sachin Joshi', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(58, 3, 3, 'Piyush Verma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(59, 3, 3, 'Tarun Sharma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(60, 3, 3, 'Ashwin Patel', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(61, 3, 3, 'Rohit Verma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(62, 3, 3, 'Sahil Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(63, 3, 3, 'Mohan Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(64, 3, 3, 'Ravi Singh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(65, 3, 3, 'Harsh Gupta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(66, 3, 3, 'Vishal Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(67, 3, 3, 'Praveen Nair', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(68, 3, 3, 'Rahul Jain', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(69, 3, 3, 'Yogesh Tyagi', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(70, 3, 3, 'Aakash Roy', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(71, 3, 4, 'Suresh Raina', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(72, 3, 4, 'Sanjay Mishra', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(73, 3, 4, 'Karan Joshi', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(74, 3, 4, 'Neeraj Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(75, 3, 4, 'Ashish Thakur', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(76, 3, 4, 'Umesh Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(77, 3, 4, 'Varun Sharma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(78, 3, 4, 'Vikram Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(79, 3, 4, 'Harish Rao', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(80, 3, 4, 'Anand Verma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(81, 3, 4, 'Amit Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(82, 3, 4, 'Kishore Singh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(83, 3, 4, 'Ravindra Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(84, 3, 4, 'Sahil Gupta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(85, 3, 4, 'Puneet Thakur', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(86, 3, 4, 'Vijay Sharma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(87, 3, 4, 'Kiran Verma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(88, 3, 4, 'Naveen Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(89, 3, 4, 'Rajesh Singh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(90, 3, 4, 'Abhinav Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(91, 3, 4, 'Alok Verma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(92, 3, 4, 'Rajat Singh', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(93, 3, 4, 'Kamal Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(94, 3, 4, 'Sandeep Kumar', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(95, 3, 4, 'Aman Gupta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(96, 3, 4, 'Dinesh Yadav', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(97, 3, 4, 'Mukul Sharma', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(98, 3, 4, 'Nitin Thakur', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(99, 3, 4, 'Prakash Mehta', 'Occupied');
INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES(100, 3, 4, 'Karan Joshi', 'Occupied');



INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES (1, 'Rajesh Kumar', 'Suresh Kumar', 'CS', '101 Street A', '9999999991', 20, '2003-01-01', 2, 1);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(2, 'Ankit Verma', 'Rakesh Verma', 'EE', '102 Street B', '9999999992', 21, '2002-02-02', 4, 2);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(3, 'Vikas Singh', 'Mohan Singh', 'ME', '103 Street C', '9999999993', 22, '2001-03-03', 1, 3);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(4, 'Rohit Sharma', 'Amit Sharma', 'CE', '104 Street D', '9999999994', 20, '2003-04-04', 2, 4);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(5, 'Deepak Chawla', 'Ravi Chawla', 'CS', '105 Street E', '9999999995', 21, '2002-05-05', 1, 5);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(6, 'Prateek Ghosh', 'Suresh Ghosh', 'EE', '106 Street F', '9999999996', 22, '2001-06-06', 3, 6);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(7, 'Suresh Mishra', 'Anil Mishra', 'ME', '107 Street G', '9999999997', 20, '2003-07-07', 2, 7);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(8, 'Manoj Tiwari', 'Rakesh Tiwari', 'CE', '108 Street H', '9999999998', 21, '2002-08-08', 4, 8);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(9, 'Kunal Patel', 'Mohan Patel', 'CS', '109 Street I', '9999999999', 22, '2001-09-09', 2, 9);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(10, 'Naveen Reddy', 'Amit Reddy', 'EE', '110 Street J', '9999999910', 20, '2003-10-10', 2, 10);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(11, 'Harish Chandra', 'Suresh Chandra', 'ME', '111 Street K', '9999999911', 21, '2002-11-11', 4, 11);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(12, 'Vikrant Gupta', 'Ravi Gupta', 'CE', '112 Street L', '9999999912', 22, '2001-12-12', 1, 12);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(13, 'Anil Mehta', 'Raj Mehta', 'CS', '113 Street M', '9999999913', 20, '2003-01-13', 2, 13);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(14, 'Sunil Singh', 'Amit Singh', 'EE', '114 Street N', '9999999914', 21, '2002-02-14', 4, 14);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(15, 'Nitin Kumar', 'Suresh Kumar', 'ME', '115 Street O', '9999999915', 22, '2001-03-15', 3, 15);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(16, 'Ashok Jain', 'Ravi Jain', 'CE', '116 Street P', '9999999916', 20, '2003-04-16', 2, 16);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(17, 'Bharat Joshi', 'Mohan Joshi', 'CS', '117 Street Q', '9999999917', 21, '2002-05-17', 4, 17);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(18, 'Arjun Rao', 'Anil Rao', 'EE', '118 Street R', '9999999918', 22, '2001-06-18', 1, 18);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(19, 'Prashant Jha', 'Suresh Jha', 'ME', '119 Street S', '9999999919', 20, '2003-07-19', 2, 19);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(20, 'Ramesh Yadav', 'Ravi Yadav', 'CE', '120 Street T', '9999999920', 21, '2002-08-20', 4, 20);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(21, 'Sanjay Kapoor', 'Mohan Kapoor', 'CS', '121 Street U', '9999999921', 22, '2001-09-21', 1, 21);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(22, 'Mahesh Nair', 'Anil Nair', 'EE', '122 Street V', '9999999922', 20, '2003-10-22', 2, 22);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(23, 'Vinod Gupta', 'Suresh Gupta', 'ME', '123 Street W', '9999999923', 21, '2002-11-23', 4, 23);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(24, 'Aman Verma', 'Ravi Verma', 'CE', '124 Street X', '9999999924', 22, '2001-12-24', 3, 24);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(25, 'Abhishek Singh', 'Mohan Singh', 'CS', '125 Street Y', '9999999925', 20, '2003-01-25', 2, 25);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(26, 'Amit Sharma', 'Suresh Sharma', 'EE', '126 Street Z', '9999999926', 21, '2002-02-26', 4, 26);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(27, 'Ravi Patel', 'Ravi Patel', 'ME', '127 Street A', '9999999927', 22, '2001-03-27', 1, 27);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(28, 'Saurabh Kumar', 'Anil Kumar', 'CE', '128 Street B', '9999999928', 20, '2003-04-28', 2, 28);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(29, 'Vivek Ranjan', 'Mohan Ranjan', 'CS', '129 Street C', '9999999929', 21, '2002-05-29', 4, 29);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(30, 'Sumit Roy', 'Suresh Roy', 'EE', '130 Street D', '9999999930', 22, '2001-06-30', 1, 30);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(31, 'Rahul Joshi', 'Ravi Joshi', 'ME', '131 Street E', '9999999931', 20, '2003-07-31', 2, 31);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(32, 'Akash Verma', 'Mohan Verma', 'CE', '132 Street F', '9999999932', 21, '2002-08-01', 4, 32);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(33, 'Lokesh Rao', 'Anil Rao', 'CS', '133 Street G', '9999999933', 22, '2001-09-02', 1, 33);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(34, 'Shashank Mishra', 'Suresh Mishra', 'EE', '134 Street H', '9999999934', 20, '2003-10-03', 2, 34);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(35, 'Yash Gupta', 'Ravi Gupta', 'ME', '135 Street I', '9999999935', 21, '2002-11-04', 4, 35);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(36, 'Ajay Sinha', 'Mohan Sinha', 'CE', '136 Street J', '9999999936', 22, '2001-12-05', 1, 36);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(37, 'Kartik Tyagi', 'Anil Tyagi', 'CS', '137 Street K', '9999999937', 20, '2003-01-06', 2, 37);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(38, 'Akhil Sharma', 'Suresh Sharma', 'EE', '138 Street L', '9999999938', 21, '2002-02-07', 4, 38);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(39, 'Gaurav Mehta', 'Ravi Mehta', 'ME', '139 Street M', '9999999939', 22, '2001-03-08', 3, 39);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(40, 'Siddharth Singh', 'Mohan Singh', 'CE', '140 Street N', '9999999940', 20, '2003-04-09', 2, 40);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(41, 'Manish Jain', 'Anil Jain', 'CS', '141 Street O', '9999999941', 21, '2002-05-10', 4, 41);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(42, 'Pankaj Kumar', 'Suresh Kumar', 'EE', '142 Street P', '9999999942', 22, '2001-06-11', 3, 42);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(43, 'Rakesh Rao', 'Ravi Rao', 'ME', '143 Street Q', '9999999943', 20, '2003-07-12', 2, 43);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(44, 'Nitin Verma', 'Mohan Verma', 'CE', '144 Street R', '9999999944', 21, '2002-08-13', 4, 44);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(45, 'Shivam Thakur', 'Anil Thakur', 'CS', '145 Street S', '9999999945', 22, '2001-09-14', 2, 45);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(46, 'Anuj Kumar', 'Suresh Kumar', 'EE', '146 Street T', '9999999946', 20, '2003-10-15', 2, 46);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(47, 'Ashish Roy', 'Ravi Roy', 'ME', '147 Street U', '9999999947', 21, '2002-11-16', 4, 47);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(48, 'Suraj Gupta', 'Mohan Gupta', 'CE', '148 Street V', '9999999948', 22, '2001-12-17', 1, 48);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(49, 'Rajat Mehta', 'Anil Mehta', 'CS', '149 Street W', '9999999949', 20, '2003-01-18', 2, 49);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(50, 'Rohan Sharma', 'Suresh Sharma', 'EE', '150 Street X', '9999999950', 21, '2002-02-19', 4, 50);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(51, 'Mohit Gupta', 'Ravi Gupta', 'ME', '151 Street Y', '9999999951', 22, '2001-03-20', 1, 51);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(52, 'Rakesh Yadav', 'Mohan Yadav', 'CE', '152 Street Z', '9999999952', 20, '2003-04-21', 2, 52);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(53, 'Nikhil Mehta', 'Anil Mehta', 'CS', '153 Street A', '9999999953', 21, '2002-05-22', 4, 53);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(54, 'Kunal Singh', 'Suresh Singh', 'EE', '154 Street B', '9999999954', 22, '2001-06-23', 2, 54);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(55, 'Manoj Pandey', 'Ravi Pandey', 'ME', '155 Street C', '9999999955', 20, '2003-07-24', 2, 55);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(56, 'Ajay Kumar', 'Mohan Kumar', 'CE', '156 Street D', '9999999956', 21, '2002-08-25', 4, 56);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(57, 'Sachin Joshi', 'Anil Joshi', 'CS', '157 Street E', '9999999957', 22, '2001-09-26', 3, 57);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(58, 'Piyush Verma', 'Suresh Verma', 'EE', '158 Street F', '9999999958', 20, '2003-10-27', 2, 58);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(59, 'Tarun Sharma', 'Ravi Sharma', 'ME', '159 Street G', '9999999959', 21, '2002-11-28', 4, 59);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(60, 'Ashwin Patel', 'Mohan Patel', 'CE', '160 Street H', '9999999960', 22, '2001-12-29', 2, 60);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(61, 'Rohit Verma', 'Anil Verma', 'CS', '161 Street I', '9999999961', 20, '2003-01-30', 2, 61);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(62, 'Sahil Mehta', 'Suresh Mehta', 'EE', '162 Street J', '9999999962', 21, '2002-02-31', 4, 62);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(63, 'Mohan Kumar', 'Ravi Kumar', 'ME', '163 Street K', '9999999963', 22, '2001-03-01', 1, 63);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(64, 'Ravi Singh', 'Mohan Singh', 'CE', '164 Street L', '9999999964', 20, '2003-04-02', 2, 64);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(65, 'Harsh Gupta', 'Anil Gupta', 'CS', '165 Street M', '9999999965', 21, '2002-05-03', 4, 65);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(66, 'Vishal Kumar', 'Suresh Kumar', 'EE', '166 Street N', '9999999966', 22, '2001-06-04', 1, 66);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(67, 'Praveen Nair', 'Ravi Nair', 'ME', '167 Street O', '9999999967', 20, '2003-07-05', 2, 67);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(68, 'Rahul Jain', 'Mohan Jain', 'CE', '168 Street P', '9999999968', 21, '2002-08-06', 4, 68);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(69, 'Yogesh Tyagi', 'Anil Tyagi', 'CS', '169 Street Q', '9999999969', 22, '2001-09-07', 1, 69);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(70, 'Aakash Roy', 'Suresh Roy', 'EE', '170 Street R', '9999999970', 20, '2003-10-08', 2, 70);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(71, 'Suresh Raina', 'Ravi Raina', 'ME', '171 Street S', '9999999971', 21, '2002-11-09', 4, 71);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(72, 'Sanjay Mishra', 'Mohan Mishra', 'CE', '172 Street T', '9999999972', 22, '2001-12-10', 3, 72);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(73, 'Karan Joshi', 'Anil Joshi', 'CS', '173 Street U', '9999999973', 20, '2003-01-11', 2, 73);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(74, 'Neeraj Kumar', 'Suresh Kumar', 'EE', '174 Street V', '9999999974', 21, '2002-02-12', 4, 74);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(75, 'Ashish Thakur', 'Ravi Thakur', 'ME', '175 Street W', '9999999975', 22, '2001-03-13', 3, 75);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(76, 'Umesh Mehta', 'Mohan Mehta', 'CE', '176 Street X', '9999999976', 20, '2003-04-14', 2, 76);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(77, 'Varun Sharma', 'Anil Sharma', 'CS', '177 Street Y', '9999999977', 21, '2002-05-15', 4, 77);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(78, 'Vikram Kumar', 'Suresh Kumar', 'EE', '178 Street Z', '9999999978', 22, '2001-06-16', 3, 78);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(79, 'Harish Rao', 'Ravi Rao', 'ME', '179 Street A', '9999999979', 20, '2003-07-17', 2, 79);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(80, 'Anand Verma', 'Mohan Verma', 'CE', '180 Street B', '9999999980', 21, '2002-08-18', 4, 80);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(81, 'Amit Mehta', 'Anil Mehta', 'CS', '181 Street C', '9999999981', 22, '2001-09-19', 1, 81);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(82, 'Kishore Singh', 'Suresh Singh', 'EE', '182 Street D', '9999999982', 20, '2003-10-20', 2, 82);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(83, 'Ravindra Kumar', 'Ravi Kumar', 'ME', '183 Street E', '9999999983', 21, '2002-11-21', 4, 83);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(84, 'Sahil Gupta', 'Mohan Gupta', 'CE', '184 Street F', '9999999984', 22, '2001-12-22', 2, 84);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(85, 'Puneet Thakur', 'Anil Thakur', 'CS', '185 Street G', '9999999985', 20, '2003-01-23', 2, 85);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(86, 'Vijay Sharma', 'Suresh Sharma', 'EE', '186 Street H', '9999999986', 21, '2002-02-24', 4, 86);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(87, 'Kiran Verma', 'Ravi Verma', 'ME', '187 Street I', '9999999987', 22, '2001-03-25', 1, 87);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(88, 'Naveen Kumar', 'Mohan Kumar', 'CE', '188 Street J', '9999999988', 20, '2003-04-26', 2, 88);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(89, 'Rajesh Singh', 'Anil Singh', 'CS', '189 Street K', '9999999989', 21, '2002-05-27', 4, 89);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(90, 'Abhinav Mehta', 'Suresh Mehta', 'EE', '190 Street L', '9999999990', 22, '2001-06-28', 2, 90);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(91, 'Alok Verma', 'Ravi Verma', 'ME', '191 Street M', '9999999991', 20, '2003-07-29', 2, 91);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(92, 'Rajat Singh', 'Mohan Singh', 'CE', '192 Street N', '9999999992', 21, '2002-08-30', 4, 92);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(93, 'Kamal Mehta', 'Anil Mehta', 'CS', '193 Street O', '9999999993', 22, '2001-09-01', 4, 93);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(94, 'Sandeep Kumar', 'Suresh Kumar', 'EE', '194 Street P', '9999999994', 20, '2003-10-02', 2, 94);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(95, 'Aman Gupta', 'Ravi Gupta', 'ME', '195 Street Q', '9999999995', 21, '2002-11-03', 4, 95);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(96, 'Dinesh Yadav', 'Mohan Yadav', 'CE', '196 Street R', '9999999996', 22, '2001-12-04', 1, 96);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(97, 'Mukul Sharma', 'Anil Sharma', 'CS', '197 Street S', '9999999997', 20, '2003-01-05', 2, 97);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(98, 'Nitin Thakur', 'Suresh Thakur', 'EE', '198 Street T', '9999999998', 21, '2002-02-06', 4, 98);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(99, 'Prakash Mehta', 'Ravi Mehta', 'ME', '199 Street U', '9999999999', 22, '2001-03-07', 2, 99);
INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES(100, 'Karan Joshi', 'Mohan Joshi', 'CE', '200 Street V', '9999999900', 20, '2003-04-08', 2, 100);


select * from student

INSERT INTO mess (mess_incharge_Id, monthly_avg_expense, mess_bf_timing, mess_dinner_timing, sunday_bf_timing) VALUES ('M001', '30000', '07:00-09:00', '19:00-21:00', '08:00-10:00');
INSERT INTO mess (mess_incharge_Id, monthly_avg_expense, mess_bf_timing, mess_dinner_timing, sunday_bf_timing) VALUES ('M002', '32000', '07:00-09:00', '19:00-21:00', '08:00-10:00');
INSERT INTO mess (mess_incharge_Id, monthly_avg_expense, mess_bf_timing, mess_dinner_timing, sunday_bf_timing) VALUES ('M003', '31000', '07:00-09:00', '19:00-21:00', '08:00-10:00');
INSERT INTO mess (mess_incharge_Id, monthly_avg_expense, mess_bf_timing, mess_dinner_timing, sunday_bf_timing) VALUES ('M004', '33000', '07:00-09:00', '19:00-21:00', '08:00-10:00');


INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Amit Kumar', 1, 'Street 1', 50000, '1111111111', 1, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Ravi Sharma', 2, 'Street 2', 52000, '2222222222', 2, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Suresh Singh', 3, 'Street 3', 55000, '3333333333', 3, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Anil Verma', 4, 'Street 4', 51000, '4444444444', 4, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Mohan Gupta', 5, 'Street 5', 53000, '5555555555', 1, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Rajiv Kumar', 6, 'Street 6', 54000, '6666666666', 2, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Sunil Mishra', 7, 'Street 7', 56000, '7777777777', 3, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Vivek Singh', 8, 'Street 8', 58000, '8888888888', 4, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Alok Tiwari', 9, 'Street 9', 59000, '9999999999', 1, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Prakash Verma', 10, 'Street 10', 60000, '1010101010', 2, 'Hostel Assistant', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Kishore Sharma', 11, 'Street 11', 62000, '1112223333', 1, 'Warden', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Rahul Jain', 12, 'Street 12', 64000, '4445556666', 2, 'Warden', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Sunita Devi', 13, 'Street 13', 65000, '7778889999', 3, 'Warden', NULL);
INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES('Manisha Verma', 14, 'Street 14', 67000, '9991112222', 4, 'Warden', NULL);


INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(1, 1, 'Amit Sharma', '09:30', '10:30', '2024-06-03');
INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(2, 3, 'Ravi Verma', '14:00', '16:00', '2024-06-04');
INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(3, 5, 'Suresh Singh', '11:45', '12:30', '2024-06-05');
INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(4, 7, 'Anil Kumar', '15:20', '17:00', '2024-06-06');
INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(5, 9, 'Mohan Gupta', '10:00', '11:00', '2024-06-07');
INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(6, 11, 'Rajiv Tiwari', '13:30', '15:00', '2024-06-08');
INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(7, 13, 'Sunil Mishra', '09:00', '10:30', '2024-06-09');
INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(8, 15, 'Vivek Singh', '16:00', '17:30', '2024-06-10');
INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(9, 17, 'Alok Tiwari', '14:45', '15:45', '2024-06-11');
INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES(10, 19, 'Prakash Verma', '11:30', '12:15', '2024-06-12');


INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES ('FUR001', 1, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR002', 1, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR003', 1, 'Table');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR004', 2, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR005', 2, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR006', 2, 'Table');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR007', 3, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR008', 3, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR009', 3, 'Table');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR010', 4, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR011', 4, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR012', 4, 'Table');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR013', 5, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR014', 5, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR015', 5, 'Table');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR016', 6, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR017', 6, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR018', 6, 'Table');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR019', 7, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR020', 7, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR021', 7, 'Table');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR022', 8, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR023', 8, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR024', 8, 'Table');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR025', 9, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR026', 9, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR027', 9, 'Table');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR028', 10, 'Bed');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR029', 10, 'Chair');
INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES('FUR030', 10, 'Table');



INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 1, 'Rajesh Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 2, 'Ankit Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 3, 'Vikas Singh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 4, 'Rohit Sharma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 5, 'Deepak Chawla');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 6, 'Prateek Ghosh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 7, 'Suresh Mishra');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 8, 'Manoj Tiwari');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 9, 'Kunal Patel');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 10, 'Naveen Reddy');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 11, 'Harish Chandra');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 12, 'Vikrant Gupta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 13, 'Anil Mehta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 14, 'Sunil Singh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 15, 'Nitin Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 16, 'Ashok Jain');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 17, 'Bharat Joshi');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 18, 'Arjun Rao');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 19, 'Prashant Jha');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 20, 'Ramesh Yadav');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 21, 'Sanjay Kapoor');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 22, 'Mahesh Nair');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 23, 'Vinod Gupta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 24, 'Aman Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 25, 'Abhishek Singh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 26, 'Amit Sharma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 27, 'Ravi Patel');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 28, 'Saurabh Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 29, 'Vivek Ranjan');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 30, 'Sumit Roy');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 31, 'Rahul Joshi');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 32, 'Akash Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 33, 'Lokesh Rao');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 34, 'Shashank Mishra');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 35, 'Yash Gupta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 36, 'Ajay Sinha');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 37, 'Kartik Tyagi');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 38, 'Akhil Sharma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 39, 'Gaurav Mehta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 40, 'Siddharth Singh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 41, 'Manish Jain');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 42, 'Pankaj Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 43, 'Rakesh Rao');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 44, 'Nitin Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 45, 'Shivam Thakur');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 46, 'Anuj Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 47, 'Ashish Roy');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 48, 'Suraj Gupta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 49, 'Rajat Mehta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 50, 'Rohan Sharma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 51, 'Mohit Gupta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 52, 'Rakesh Yadav');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 53, 'Nikhil Mehta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 54, 'Kunal Singh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 55, 'Manoj Pandey');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 56, 'Ajay Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 57, 'Sachin Joshi');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 58, 'Piyush Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 59, 'Tarun Sharma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 60, 'Ashwin Patel');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 61, 'Rohit Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 62, 'Sahil Mehta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 63, 'Mohan Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 64, 'Ravi Singh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 65, 'Harsh Gupta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 66, 'Vishal Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 67, 'Praveen Nair');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 68, 'Rahul Jain');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 69, 'Yogesh Tyagi');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 70, 'Aakash Roy');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 71, 'Suresh Raina');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 72, 'Sanjay Mishra');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 73, 'Karan Joshi');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 74, 'Neeraj Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 75, 'Ashish Thakur');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 76, 'Umesh Mehta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 77, 'Varun Sharma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 78, 'Vikram Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 79, 'Harish Rao');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 80, 'Anand Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 81, 'Alok Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 82, 'Kishore Singh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 83, 'Ravindra Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 84, 'Sahil Gupta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 85, 'Puneet Thakur');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 86, 'Vijay Sharma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 87, 'Kiran Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 88, 'Naveen Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 89, 'Rajesh Singh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 90, 'Abhinav Mehta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 91, 'Alok Verma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 92, 'Rajat Singh');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 93, 'Kamal Mehta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 94, 'Sandeep Kumar');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 95, 'Aman Gupta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 96, 'Dinesh Yadav');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 97, 'Mukul Sharma');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 98, 'Nitin Thakur');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Not Paid', 99, 'Prakash Mehta');
INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES('2024-01', 'Paid', 100, 'Karan Joshi');





CREATE TABLE Hostel_Target (
    Total_Expense Number
);



CREATE TABLE HostelTargetFee (
    student_name VARCHAR(40),
    student_id NUMBER,
    fee_status VARCHAR(40)
);



CREATE TABLE HostelTargetFeeNOTpaid (
    student_name VARCHAR(40),
    student_id NUMBER,
    fee_status VARCHAR(40)
);



CREATE TABLE HostelTargetStaffSalaryRank (
    emp_name VARCHAR(40),
    emp_id NUMBER,
    emp_salary NUMBER,
    emp_cellno VARCHAR(20),
    hostel_id NUMBER,
    emp_designation VARCHAR(40)
);


commit;