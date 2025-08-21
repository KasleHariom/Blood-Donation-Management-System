-- Project Name: Blood Donation Manegement System 
create database blood_donation_management;

use blood_donation_management;

create table blood_types (
    blood_type_id int primary key auto_increment,
    blood_type varchar(5) unique
);
insert into blood_types (blood_type) values
('A+'),
('A-'),
('B+'),
('B-'),
('AB+'),
('AB-'),
('O+'),
('O-');

create table donors (
    donor_id int primary key auto_increment,
    name varchar(100),
    gender char(1),
    age int,
    blood_type_id int,
    contact_number varchar(15),
    city varchar(50),
    registration_date date,
    foreign key (blood_type_id) references blood_types(blood_type_id)
);

insert into donors (name, gender, age, blood_type_id, contact_number, city, registration_date) values
('Rahul Sharma', 'M', 28, 1, '9876543210', 'Mumbai', '2025-06-01'),
('Priya Verma', 'F', 32, 2, '9123456780', 'Delhi', '2025-06-02'),
('Amit Kumar', 'M', 24, 3, '9988776655', 'Bengaluru', '2025-06-03'),
('Sneha Patil', 'F', 29, 4, '9876123456', 'Pune', '2025-06-04'),
('Rajesh Singh', 'M', 35, 5, '9765432109', 'Kolkata', '2025-06-05'),
('Anita Desai', 'F', 27, 6, '9654321098', 'Chennai', '2025-06-06'),
('Sunil Mehta', 'M', 31, 7, '9543210987', 'Hyderabad', '2025-06-07'),
('Kavita Joshi', 'F', 26, 8, '9432109876', 'Ahmedabad', '2025-06-08'),
('Deepak Rao', 'M', 30, 1, '9321098765', 'Jaipur', '2025-06-09'),
('Neha Kulkarni', 'F', 23, 2, '9210987654', 'Nagpur', '2025-06-10'),
('Vikas Yadav', 'M', 34, 3, '9109876543', 'Lucknow', '2025-06-11'),
('Pooja Rani', 'F', 28, 4, '9098765432', 'Indore', '2025-06-12'),
('Suresh Babu', 'M', 29, 5, '9988776654', 'Coimbatore', '2025-06-13'),
('Meena Kumari', 'F', 33, 6, '9877665544', 'Bhopal', '2025-06-14'),
('Rohit Gupta', 'M', 25, 7, '9766554433', 'Patna', '2025-06-15');

create table donations (
    donation_id int primary key auto_increment,
    donor_id int,
    blood_type_id int,
    quantity_ml int,
    donation_date date,
    reason varchar(100),
    foreign key (donor_id) references donors(donor_id),
    foreign key (blood_type_id) references blood_types(blood_type_id)
);
insert into donations (donor_id, blood_type_id, quantity_ml, donation_date, reason) values
(1, 1, 450, '2024-01-15', 'Blood Donation Camp'),
(2, 2, 500, '2024-01-20', 'Birthday'),
(3, 3, 480, '2024-02-05', 'Hospital Request'),
(4, 4, 470, '2024-02-12', 'Emergency'),
(5, 5, 460, '2024-02-20', 'Annual Camp'),
(1, 1, 450, '2024-03-01', 'Follow-up Donation'),
(6, 2, 500, '2024-03-10', 'Blood Donation Camp'),
(7, 3, 480, '2024-03-15', 'Birthday'),
(8, 4, 470, '2024-03-20', 'Emergency'),
(2, 2, 460, '2024-04-05', 'Hospital Request'),
(9, 5, 450, '2024-04-10', 'Annual Camp'),
(10, 1, 500, '2024-04-15', 'Blood Donation Camp'),
(3, 3, 480, '2024-04-20', 'Emergency'),
(11, 4, 470, '2024-05-01', 'Birthday'),
(4, 2, 460, '2024-05-05', 'Hospital Request'),
(12, 5, 450, '2024-05-10', 'Emergency'),
(5, 1, 500, '2024-05-15', 'Annual Camp'),
(13, 2, 480, '2024-05-20', 'Blood Donation Camp'),
(6, 3, 470, '2024-06-01', 'Birthday'),
(14, 4, 460, '2024-06-05', 'Emergency'),
(7, 5, 450, '2024-06-10', 'Hospital Request'),
(15, 1, 500, '2024-06-15', 'Annual Camp'),
(8, 2, 480, '2024-06-20', 'Blood Donation Camp'),
(9, 3, 470, '2024-07-01', 'Birthday'),
(10, 4, 460, '2024-07-05', 'Emergency'),
(11, 5, 450, '2024-07-10', 'Hospital Request'),
(12, 1, 500, '2024-07-15', 'Annual Camp'),
(13, 2, 480, '2024-07-20', 'Blood Donation Camp'),
(14, 3, 470, '2024-07-25', 'Birthday'),
(15, 4, 460, '2024-07-30', 'Emergency');

create table inventory (
    inventory_id int primary key auto_increment,
    blood_type_id int,
    quantity_ml int,
    last_updated date,
    foreign key (blood_type_id) references blood_types(blood_type_id)
);
insert into inventory (blood_type_id, quantity_ml, last_updated) values
(1, 5000, '2024-06-01'),
(2, 4200, '2024-06-02'),
(3, 3800, '2024-06-03'),
(4, 6000, '2024-06-04'),
(5, 4500, '2024-06-05'),
(6, 5200, '2024-06-06'),
(7, 3100, '2024-06-07'),
(8, 4700, '2024-06-08');

create table hospitals (
    hospital_id int primary key auto_increment,
    hospital_name varchar(100),
    city varchar(50)
);
insert into hospitals (hospital_name, city) values
('City Care Hospital', 'Mumbai'),
('Sunrise Medical Center', 'Delhi'),
('Apollo General Hospital', 'Bengaluru'),
('Global Health Hospital', 'Chennai'),
('Fortis Healthcare', 'Pune'),
('MediLife Hospital', 'Hyderabad'),
('LifeCare Multispeciality', 'Kolkata'),
('Max Super Speciality', 'Ahmedabad'),
('CarePlus Hospital', 'Jaipur'),
('Star Health Hospital', 'Lucknow'),
('Greenfield Hospital', 'Nagpur'),
('Healing Touch Clinic', 'Indore'),
('Unity Health Center', 'Bhopal'),
('Wellness Hospital', 'Chandigarh'),
('Shree Hospital', 'Coimbatore');

create table hospital_requests (
    request_id int primary key auto_increment,
    hospital_id int,
    blood_type_id int,
    quantity_requested_ml int,
    request_date date,
    status varchar(20),
    foreign key (hospital_id) references hospitals(hospital_id),
    foreign key (blood_type_id) references blood_types(blood_type_id)
);
insert into hospital_requests (hospital_id, blood_type_id, quantity_requested_ml, request_date, status) values
(3, 1, 500, '2024-06-01', 'Pending'),
(7, 4, 450, '2024-06-02', 'Approved'),
(12, 2, 600, '2024-06-03', 'Pending'),
(5, 8, 700, '2024-06-04', 'Rejected'),
(9, 6, 400, '2024-06-05', 'Approved'),
(1, 3, 550, '2024-06-06', 'Pending'),
(8, 7, 500, '2024-06-07', 'Approved'),
(15, 1, 650, '2024-06-08', 'Pending'),
(4, 5, 700, '2024-06-09', 'Approved'),
(6, 2, 450, '2024-06-10', 'Rejected'),
(11, 8, 500, '2024-06-11', 'Pending'),
(2, 4, 400, '2024-06-12', 'Approved'),
(10, 6, 600, '2024-06-13', 'Pending'),
(13, 7, 700, '2024-06-14', 'Approved'),
(14, 5, 450, '2024-06-15', 'Rejected'),
(3, 2, 550, '2024-06-16', 'Pending'),
(7, 1, 500, '2024-06-17', 'Approved'),
(12, 3, 650, '2024-06-18', 'Pending'),
(5, 8, 700, '2024-06-19', 'Approved'),
(9, 6, 450, '2024-06-20', 'Rejected'),
(1, 4, 500, '2024-06-21', 'Pending'),
(8, 2, 400, '2024-06-22', 'Approved'),
(15, 7, 600, '2024-06-23', 'Pending'),
(4, 1, 700, '2024-06-24', 'Approved'),
(6, 5, 450, '2024-06-25', 'Rejected'),
(11, 3, 550, '2024-06-26', 'Pending'),
(2, 8, 500, '2024-06-27', 'Approved'),
(10, 6, 650, '2024-06-28', 'Pending'),
(13, 4, 700, '2024-06-29', 'Approved'),
(14, 2, 450, '2024-06-30', 'Rejected');

-- Total donated blood quantity on blood type
select bt.blood_type, sum(dn.quantity_ml) as total_donated_ml
from donations dn
join blood_types bt on dn.blood_type_id = bt.blood_type_id
group by bt.blood_type
order by total_donated_ml ;

-- Count donors by city
select city, count(*) as total_donors
from donors
group by city
order by total_donors ;

-- Top 5 donors by total donated blood quantity
select dr.name, sum(dn.quantity_ml) as total_donated_ml
from donations dn
join donors dr on dn.donor_id = dr.donor_id
group by dr.name
order by total_donated_ml desc
limit 5;

-- Hospitals with pending requests
select h.hospital_name, count(*) as pending_requests
from hospital_requests hr
join hospitals h on hr.hospital_id = h.hospital_id
where hr.status = 'Pending'
group by h.hospital_name
order by pending_requests ;

-- Total available inventory by blood type
select bt.blood_type, i.quantity_ml
from inventory i
join blood_types bt on i.blood_type_id = bt.blood_type_id
order by i.quantity_ml ;

-- Count total approved, rejected and pending requests.
select status, count(*) as total_requests
from hospital_requests
where status in ('Approved', 'Rejected', 'Pendind')
group by status;

-- Average age of donors by gender.
select gender, avg(age) as avg_age
from donors
group by gender;

-- Stored blood quantity on blood types below 4000 ml
select bt.blood_type, i.quantity_ml
from inventory i
join blood_types bt on i.blood_type_id = bt.blood_type_id
where i.quantity_ml < 4000;

-- Total  blood quantity requested by hospital
select h.hospital_name, sum(hr.quantity_requested_ml) as total_requested_ml
from hospital_requests hr
join hospitals h on hr.hospital_id = h.hospital_id
group by h.hospital_name
order by total_requested_ml 
limit 5; 

select * from hospitals 
order by city;

select blood_types.blood_type, sum(donations.quantity_ml) as Total_Quantity from blood_types
join donations on blood_types.blood_type_id=donations.blood_type_id
group by donations.blood_type_id;

