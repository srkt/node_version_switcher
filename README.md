# Node.js Version Switcher

This batch script allows you to temporarily switch between different Node.js versions within your current command prompt session. It prompts the user to select a Node.js version from a specified folder and updates the `PATH` environment variable accordingly.

## Prerequisites

- Ensure that you have multiple Node.js versions stored in separate folders. Each version should have its `bin` directory that contains the `node` executable.

## Setup

1. Save the batch script as `node_version_switcher.bat`.

2. Modify the script to set the correct path to the folder where your Node.js versions are stored:
    ```batch
    set "nodeVersionsFolder=C:\path\to\node\versions"
    ```
   Replace `C:\path\to\node\versions` with the actual path to your Node.js versions folder.

3. (Optional) Add the directory containing `node_version_switcher.bat` to your `PATH` environment variable for easier access:

    - Open the Start Menu, search for "Environment Variables," and select "Edit the system environment variables."
    - In the System Properties window, click on the "Environment Variables..." button.
    - In the Environment Variables window, find the `Path` variable in the "System variables" section and select it.
    - Click the "Edit..." button.
    - In the Edit Environment Variable window, click "New" and add the path to the directory containing `node_version_switcher.bat`.
    - Click "OK" to close all windows.

## Usage

1. Open Command Prompt.

2. If you added the script directory to your `PATH`, simply run the script using the `call` command:
    ```batch
    call node_version_switcher.bat
    ```
   Otherwise, navigate to the directory where you saved `node_version_switcher.bat` and run:
    ```batch
    call node_version_switcher.bat
    ```

3. The script will list all available Node.js versions in the specified folder.

4. Enter the desired Node.js version when prompted.

5. The script will update the `PATH` environment variable to include the `bin` directory of the selected Node.js version and display the switched version.

### Important Notes

- Use the `call` command to run the script to ensure the `PATH` variable changes persist within the current command prompt session.
- The script will revert the `PATH` changes when the session ends.
