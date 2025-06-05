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
   - Open your web browser and navigate to `http://localhost:5000` (or the port shown in the console) to see the current date and time.

2. **Docker/Podman**:
   - Build the Docker image using the command:
     ```
     docker build -t dotnet-date-time-app .
     ```
     Or with Podman:
     ```
     podman build -t dotnet-date-time-app .
     ```
   - Run the container using the command (map your desired host port, e.g. 5001, to container port 8080):
     ```
     docker run -d -p 5001:8080 dotnet-date-time-app
     ```
     Or with Podman and a specific container name:
     ```
     podman run -d --name date-time-app -p 5001:8080 dotnet-date-time-app
     ```
   - Open your web browser and navigate to `http://localhost:5001` to see the current date and time.

### Pushing the Image to GitHub Container Registry (GHCR)

You can use the provided `gchr-push.sh` script to build and push your image to GHCR easily.

1. **Set your GitHub Personal Access Token** (with `write:packages` scope) in your environment:
   ```
   export GITHUB_TOKEN=your_token_here
   ```

2. **Run the script** (Podman is the default; you can also specify `docker` as the first argument):
   ```
   ./gchr-push.sh
   ```
   Or, to use Docker:
   ```
   ./gchr-push.sh docker
   ```
   To specify a custom image tag (e.g., `v1.0.0`):
   ```
   ./gchr-push.sh podman v1.0.0
   ```

The script will:
- Build the image
- Authenticate to GHCR
- Push the image with your chosen tag

> **Note:**
> Replace `your_token_here` with your actual GitHub Personal Access Token.
> The script uses your GitHub username as configured inside the script.

> **Note:**
> By default, .NET 8+ containers listen on port 8080. Adjust the `-p` flag as needed.
> You can use [Podman](https://podman.io/) as a drop-in replacement for Docker.
> All `docker` commands above work the same way with `podman` (e.g., `podman build ...`, `podman run ...`).

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
