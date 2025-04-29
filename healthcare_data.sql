select * from healthcare_data;

**top hospital by patient visit**

select hospital,count(patient) as patient_count 
from healthcare_data 
group by hospital 
order by patient_count desc;
select hospital,count(patient) as patient_count 
from healthcare_data 
group by hospital 
order by patient_count desc 
limit 5;

SELECT hospital,COUNT(patient) AS number_of_patients
FROM healthcare_data
WHERE medical_condition IN ('cancer')
GROUP BY hospital
ORDER BY number_of_patients DESC;



select doctor,count(patient) as patient_count 
from healthcare_data 
group by doctor 
order by patient_count desc 
limit 5;

select hospital,count(doctor) as patient_count 
from healthcare_data 
group by hospital
order by patient_count desc 
limit 5;

select age_group,gender,count(patient) as pat_demo
from healthcare_data group by age_group,gender order by pat_demo desc;

select age_group,gender,medical_condition,count(patient) as pat_demo
from healthcare_data 
group by age_group,gender,medical_condition 
order by pat_demo desc;


select medical_condition,blood_type,count(medical_condition) as count_condition 
from healthcare_data 
group by medical_condition,blood_type 
order by count_condition desc; 

select medical_condition,age_group,gender,blood_type,count(medical_condition) as count_condition 
from healthcare_data 
group by medical_condition,age_group,gender,blood_type
order by count_condition desc; 

select admission_type,count(patient) as pat_count 
from healthcare_data
group by admission_type 
order by pat_count desc;

select admission_type,age_group,medical_condition,count(age_group) as pat_count 
from healthcare_data
group by admission_type,age_group,gender,medical_condition
order by pat_count desc;


select insurance_provider,count(patient) as ins 
from healthcare_data 
group by insurance_provider 
order by ins desc;

select medication,count(patient) as ins 
from healthcare_data 
group by medication
order by ins desc;

select test_results,count(patient) as ins 
from healthcare_data 
group by test_results
order by ins desc;


select max(billing_amount) as max,avg(billing_amount) as average,min(billing_amount) as min from healthcare_data;

select * from healthcare_data order by billing_amount asc;


select * from healthcare_data;

