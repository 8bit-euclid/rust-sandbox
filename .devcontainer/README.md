# Rust Development Container

This devcontainer provides a complete Rust development environment with all necessary tools and VS Code extensions.

## What's Included

### Rust Toolchain
- Latest stable Rust compiler
- Cargo package manager
- Clippy linter
- Rustfmt code formatter
- Rust source code for better IDE support

### VS Code Extensions
- **rust-analyzer**: Advanced Rust language server
- **CodeLLDB**: Debugging support
- **crates**: Crate dependency management
- **Even Better TOML**: Enhanced TOML file support
- **Jupyter**: Jupyter notebook support for interactive development

### Jupyter & Interactive Development
- **Python 3**: Latest stable version
- **Jupyter**: Interactive notebook environment
- **JupyterLab**: Enhanced Jupyter interface
- **evcxr_jupyter**: Rust kernel for Jupyter notebooks

### Additional Tools
- **Built-in Cargo commands**: Modern dependency management (`cargo add`, `cargo remove`)
- **Git**: Version control
- **GitHub CLI**: GitHub integration

## Getting Started

1. **Prerequisites**: Install Docker and VS Code with the Dev Containers extension
2. **Open in Container**: 
   - Open this folder in VS Code
   - When prompted, click "Reopen in Container"
   - Or use Command Palette: "Dev Containers: Reopen in Container"

3. **Create a new Rust project**:
   ```bash
   cargo new my_project
   cd my_project
   cargo run
   ```

## Features

- **Auto-formatting**: Code is automatically formatted on save
- **Linting**: Clippy runs on save to catch common mistakes
- **IntelliSense**: Full code completion and navigation
- **Debugging**: Integrated debugging with breakpoints
- **Port Forwarding**: Ports 3000, 8000, and 8080 are automatically forwarded
- **Jupyter Notebooks**: Interactive Rust development with the `rust` kernel

## Using Jupyter Notebooks

### In VS Code
1. Open any `.ipynb` file in VS Code
2. Click the kernel selector (top-right of the notebook)
3. Select **`rust`** from the dropdown
4. Run cells with Shift+Enter or the play button

### Via Jupyter Lab
```bash
jupyter lab
```
Then navigate to your notebook and select the `rust` kernel.

### Via Jupyter Notebook
```bash
jupyter notebook
```
Then navigate to your notebook and select the `rust` kernel.

### Available Kernels
- **rust**: Rust kernel (evcxr_jupyter)
- **python3**: Python kernel

## Customization

You can modify the devcontainer configuration by editing:
- `.devcontainer/devcontainer.json`: VS Code settings and extensions
- `.devcontainer/Dockerfile`: Container image and system packages
