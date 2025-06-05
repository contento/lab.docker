# dotnet-date-time-app

This project is a simple .NET web application that displays the current local date and time. It is designed to run as a standalone application or within a Docker container.

## Project Structure

- **src/**: Contains the source code for the application.
  - **Controllers/**: Contains the controller classes.
    - **HomeController.cs**: The controller that handles requests for the home page.
  - **Views/**: Contains the Razor views.
    - **Home/**: Contains views related to the home page.
      - **Index.cshtml**: The view that displays the current date and time.
  - **Program.cs**: The entry point of the application.
  - **Startup.cs**: Configures services and the request pipeline.
  - **dotnet-date-time-app.csproj**: The project file containing metadata and dependencies.

- **Dockerfile**: Instructions for building a Docker image for the application.

- **.dockerignore**: Specifies files and directories to ignore when building the Docker image.

- **README.md**: Documentation for the project.

## Getting Started

### Prerequisites

- .NET SDK
- Docker (if running in a container)

### Running the Application

1. **Standalone**: 
   - Navigate to the `src` directory.
   - Run the application using the command:
     ```
     dotnet run
     ```
   - Open your web browser and navigate to `http://localhost:5000` to see the current date and time.

2. **Docker**:
   - Build the Docker image using the command:
     ```
     docker build -t dotnet-date-time-app .
     ```
   - Run the Docker container using the command:
     ```
     docker run -d -p 5000:80 dotnet-date-time-app
     ```
   - Open your web browser and navigate to `http://localhost:5000` to see the current date and time.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.