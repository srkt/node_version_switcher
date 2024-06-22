# Node.js Version Switcher

This batch script allows you to temporarily switch between different Node.js versions within your current command prompt session. It prompts the user to select a Node.js version from a specified folder and updates the `PATH` environment variable accordingly.

## Prerequisites

- Ensure that you have multiple Node.js versions stored in separate folders. Each version should have the `node` executable directly in its directory.

## Setup

1. Save the batch script as `SwitchNodeVersion.bat`.

2. Modify the script to set the correct path to the folder where your Node.js versions are stored:
    ```batch
    set "nodeVersionsFolder=C:\path\to\node\versions"
    ```
   Replace `C:\path\to\node\versions` with the actual path to your Node.js versions folder.

3. (Optional) Add the directory containing `SwitchNodeVersion.bat` to your `PATH` environment variable for easier access:

    - Open the Start Menu, search for "Environment Variables," and select "Edit the system environment variables."
    - In the System Properties window, click on the "Environment Variables..." button.
    - In the Environment Variables window, find the `Path` variable in the "System variables" section and select it.
    - Click the "Edit..." button.
    - In the Edit Environment Variable window, click "New" and add the path to the directory containing `SwitchNodeVersion.bat`.
    - Click "OK" to close all windows.

## Usage

1. Open Command Prompt.

2. If you added the script directory to your `PATH`, simply run the script using the `call` command:
    ```batch
    call SwitchNodeVersion.bat
    ```
   Otherwise, navigate to the directory where you saved `SwitchNodeVersion.bat` and run:
    ```batch
    call SwitchNodeVersion.bat
    ```

3. The script will list all available Node.js versions in the specified folder.

4. Enter the desired Node.js version when prompted.

5. The script will update the `PATH` environment variable to include the directory of the selected Node.js version and display the switched version.

### Using with VSCode and JavaScript Environments

You can use this script with various JavaScript environments (e.g., Angular, Vue, React) and in VSCode to target different Node.js versions:

1. **Open a new Command Prompt** and use the `SwitchNodeVersion.bat` script to switch to the desired Node.js version.

2. **Launch VSCode** from the same Command Prompt session by typing:
    ```batch
    code .
    ```
    This ensures that VSCode inherits the `PATH` environment variable with the selected Node.js version.

3. **Run your JavaScript project** (Angular, Vue, React, etc.) as usual in the integrated terminal in VSCode. The terminal will use the Node.js version you selected earlier.

### Important Notes

- Use the `call` command to run the script to ensure the `PATH` variable changes persist within the current command prompt session.
- The script will revert the `PATH` changes when the session ends.
