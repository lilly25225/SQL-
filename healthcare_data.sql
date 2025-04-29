--data view--
select * from healthcare_data;

--Top 5 hospital(MOST VISITED HOSPITAL) by patient visit--

select hospital,count(patient) as patient_count 
from healthcare_data 
group by hospital 
order by patient_count desc;
select hospital,count(patient) as patient_count 
from healthcare_data 
group by hospital 
order by patient_count desc 
limit 5;

--Hospital and most visited cases--
SELECT hospital,medical_condition,COUNT(patient) AS number_of_patients
FROM healthcare_data
WHERE medical_condition IN ('Cancer','Obesity','Diabetes','Asthma','Hypertension','Arthritis')
GROUP BY hospital,medical_condition
ORDER BY number_of_patients DESC;

--Doctors and most handled cases--
SELECT doctor,medical_condition,COUNT(patient) AS number_of_patients
FROM healthcare_data
WHERE medical_condition IN ('Cancer','Obesity','Diabetes','Asthma','Hypertension','Arthritis')
GROUP BY doctor,medical_condition
ORDER BY number_of_patients DESC;

--Top 5 doctors(most active doctors) by patient count--
select doctor,count(patient) as patient_count 
from healthcare_data 
group by doctor 
order by patient_count desc 
limit 5;

--Top 5 hospitals with the most active doctors--
select hospital,count(doctor) as patient_count 
from healthcare_data 
group by hospital
order by patient_count desc 
limit 5;

-- General Patient demographics--
select age_group,gender,count(patient) as pat_demo
from healthcare_data group by age_group,gender order by pat_demo desc;

--Patient demographics by medical_condition--
select age_group,gender,medical_condition,count(patient) as pat_demo
from healthcare_data 
group by age_group,gender,medical_condition 
order by pat_demo desc;

--Medical condions and the most common blood group--
select medical_condition,blood_type,count(medical_condition) as count_condition 
from healthcare_data 
group by medical_condition,blood_type 
order by count_condition desc; 

--Classification of medical conditions by patient demographics--
select medical_condition,age_group,gender,blood_type,count(medical_condition) as count_condition 
from healthcare_data 
group by medical_condition,age_group,gender,blood_type
order by count_condition desc; 

--admission type by patient count--
select admission_type,count(patient) as pat_count 
from healthcare_data
group by admission_type 
order by pat_count desc;

--admission type by patient demographics--
select admission_type,age_group,medical_condition,count(age_group) as pat_count 
from healthcare_data
group by admission_type,age_group,gender,medical_condition
order by pat_count desc;

--most used insurance providers by patient count ranking highest to lowest--
select insurance_provider,count(patient) as ins 
from healthcare_data 
group by insurance_provider 
order by ins desc;

--Most administered medication ranking from highest to lowest count--
select medication,count(patient) as ins 
from healthcare_data 
group by medication
order by ins desc;

--View of test results by patient count--
select test_results,count(patient) as ins 
from healthcare_data 
group by test_results
order by ins desc;

--Billing amount--
select max(billing_amount) as max,avg(billing_amount) as average,min(billing_amount) as min from healthcare_data;

select * from healthcare_data order by billing_amount asc;


select * from healthcare_data;

