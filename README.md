# Hercules Lua Obfuscator

**Hercules** is a powerful Lua obfuscator designed to make your Lua code nearly impossible to reverse-engineer. With multiple layers of advanced obfuscation techniques, Hercules ensures your scripts are secure from prying eyes.
<br>
Hercules is very much still in development, and may not be the best yet, as I've made it mostly to practice Lua.

## Features

- **String Encoding:** Obfuscates strings by encoding them in base64 with additional scrambling.
- **Variable Renaming:** Replaces variable names with randomly generated names.
- **Control Flow Obfuscation:** Adds fake control flow structures to confuse static analysis.
- **Garbage Code Insertion:** Injects junk code to bloat and obscure the script.
- **Watermarking:** Automatically appends a watermark to indicate that the code has been obfuscated by Hercules.

## Installation

### macOS and Linux

1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/hercules-obfuscator.git
    cd hercules-obfuscator
    ```

2. Make the `hercules` script executable:
    ```bash
    chmod +x hercules
    ```

3. Run the obfuscator:
    ```bash
    ./hercules path/to/your/script.lua
    ```

### Windows

1. Clone this repository using Git Bash or download the ZIP file and extract it.

2. Open Command Prompt or PowerShell and navigate to the `hercules-obfuscator` directory.

3. Run the obfuscator using Lua:
    ```cmd
    lua hercules path\to\your\script.lua
    ```

Alternatively, you can use the Lua interpreter directly if it is added to your system PATH.

## Usage

To obfuscate a Lua script using Hercules, simply run:

```bash
./hercules path/to/your/script.lua  # macOS/Linux
lua hercules path\to\your\script.lua  # Windows
```

This will generate an obfuscated version of the script in the same directory, with the suffix `_obfuscated.lua`.

## Example

```bash
./hercules my_script.lua  # macOS/Linux
lua hercules my_script.lua  # Windows
```

Output:

`my_script_obfuscated.lua` – the obfuscated version of your script.

## Project Structure

```
hercules/
│
├── hercules            # Main entry point (executable)
├── pipeline.lua        # Obfuscation pipeline
├── modules/            # Obfuscation modules
│   ├── string_encoder.lua
│   ├── variable_renamer.lua
│   ├── control_flow_obfuscator.lua
│   ├── garbage_code_inserter.lua
│   └── watermark.lua
└── config.lua          # Optional configuration file (if needed)
```

## Customization

You can modify or add new modules to the `modules/` directory to create additional layers of obfuscation. The `pipeline.lua` file controls the order of obfuscation steps.

---

**Disclaimer:** Obfuscation is not a foolproof method for protecting your code. Always consider additional security measures depending on your use case.