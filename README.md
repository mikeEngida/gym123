# Gym Management System

![Gym Management System Screenshot](Gym_management_screenshots/Admin_Login.png)

Welcome to the Gym Management System! This application helps you manage gym operations, including employees, trainers, trainees, and customer payments.

## Table of Contents

- [About the Project](#about-the-project)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contact](#contact)
- [License](#license)

## About the Project

The Gym Management System is a comprehensive tool designed to streamline the management of gym operations. It includes functionalities for managing employees, trainers, trainees, and customer payments, ensuring efficient and organized gym management.

## Features

- **Employee Management**: Add, update, and remove employees.
- **Trainer Management**: Manage trainer schedules and information.
- **Trainee Management**: Track trainee progress and details.
- **Customer Payments**: Handle monthly payments and billing.

## Technologies Used

- **Programming Language**: Java
- **Database**: MySQL (or any other database you used)
- **IDE**: IntelliJ IDEA, Eclipse (or any other IDE you used)

## Getting Started

To get a local copy up and running, follow these steps:

### Prerequisites

- Ensure you have Java Development Kit (JDK) installed.
- Ensure you have MySQL (or your preferred database) installed.
- Install an IDE like IntelliJ IDEA or Eclipse.

### Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/st-miki/Gym_Management_System.git
    ```

2. Navigate to the project directory:

    ```sh
    cd Gym_Management_System
    ```

3. Set up the database:

    - Create a new database in MySQL (or your preferred database).
    - Update the `application.properties` file (or equivalent configuration file) with your database credentials.

4. Build the project using your IDE or with Maven/Gradle (if applicable):

    ```sh
    mvn clean install
    ```

5. Run the application:

    ```sh
    java -jar target/your-application.jar
    ```

### Configuration

Update the `application.properties` file with your database configuration:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/your-database-name
spring.datasource.username=Admin
spring.datasource.password=1234
spring.jpa.hibernate.ddl-auto=update
```

### Usage
Once the application is running, you can access it via your web browser or the specified interface. Use the application to add, update, manage, and track gym-related information, including employees, trainers, trainees, and customer payments.

### Screenshots
Here are some screenshots of the Gym Management System:

### Dashboard<br>
![Gym Management System Screenshot](Gym_management_screenshots/Dashboard.png)<br>
### Register Branch
![Gym Management System Screenshot](Gym_management_screenshots/Register_Branch.png)<br>
### Register Client
![Gym Management System Screenshot](Gym_management_screenshots/Register_Client.png)<br>
### Update Client
![Gym Management System Screenshot](Gym_management_screenshots/Update_Client.png)<br>
### View Department
![Gym Management System Screenshot](Gym_management_screenshots/View_Department.png)<br>
### View Employee
![Gym Management System Screenshot](Gym_management_screenshots/View_Employee.png)<br>
### View Program
![Gym Management System Screenshot](Gym_management_screenshots/View_Program.png)<br>

### Contact
Feel free to reach out if you have any questions or suggestions!

Email: mikiengida52@gmail.com<br>
Twitter: @st_mickey_<br>
License
Distributed under the MIT License. See LICENSE for more information.
