-- Create Primary and Foreign Keys




ALTER TABLE "departments"
ADD CONSTRAINT "pk_departments" PRIMARY KEY ("dpt_no");


ALTER TABLE "employees"
ADD CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no");



ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dpt_no" FOREIGN KEY("dpt_no")
REFERENCES "departments" ("dpt_no");


ALTER TABLE "dept_mgr" ADD CONSTRAINT "fk_dept_mgr_dept_no" FOREIGN KEY("dpt_no")
REFERENCES "departments" ("dpt_no");


ALTER TABLE "dept_mgr" ADD CONSTRAINT "fk_dept_mgr_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

