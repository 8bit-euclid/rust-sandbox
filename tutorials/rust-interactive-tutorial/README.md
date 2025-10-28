# Interactive Rust Programming Tutorial Series

A comprehensive, pedagogy-driven learning path for mastering Rust programming from beginner to advanced levels using Jupyter notebooks with the `evcxr_jupyter` kernel.

## 🎯 Learning Objectives

By completing this tutorial series, you will:
- Write safe, efficient Rust code following best practices
- Debug ownership and borrowing errors independently
- Design appropriate data structures and abstractions
- Handle errors gracefully and write robust applications
- Apply concurrent and async programming patterns
- Optimize code for performance when needed
- Integrate with existing systems and libraries

## 📚 Tutorial Structure

### Three-Stage Architecture (Consolidated)
1. **Beginner (Foundations)**: 5 lessons + capstone project (~10 hours)
2. **Intermediate (Building Skills)**: 6 lessons + capstone project (~15 hours)
3. **Advanced (Mastery)**: 5 lessons + capstone project (~15 hours)

**Total Duration**: ~40 hours (2 weeks at 20 hours/week)
**Total Lessons**: 16 core lessons + 3 capstone projects

## 🛠️ Prerequisites

### Required Software
- Rust (latest stable version)
- Jupyter Notebook or JupyterLab
- evcxr_jupyter kernel

### Installation Instructions

1. **Install Rust**:
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   source ~/.cargo/env
   ```

2. **Install Jupyter**:
   ```bash
   pip install jupyter
   ```

3. **Install evcxr_jupyter**:
   ```bash
   cargo install evcxr_jupyter
   evcxr_jupyter --install
   ```

4. **Verify Installation**:
   ```bash
   jupyter kernelspec list
   # Should show 'rust' kernel available
   ```

## 📖 How to Use This Tutorial

### Getting Started
1. Clone or download this tutorial series
2. Navigate to the tutorial directory
3. Start Jupyter: `jupyter notebook` or `jupyter lab`
4. Begin with `beginner/01_01_setup.ipynb`

### Learning Path
- Follow lessons in numerical order within each stage
- Complete all exercises before moving to the next lesson
- Use the Active Recall Checkpoints to test your understanding
- Attempt capstone projects to consolidate learning

### Pedagogical Features
Each lesson includes:
- **Learning Objectives**: Clear, measurable goals
- **Prerequisite Review**: Quick recap of needed knowledge
- **Key Concepts**: Core theory with visual aids
- **Live Code Exploration**: Interactive demonstrations
- **Guided Practice**: Step-by-step exercises with hints
- **Independent Practice**: Open-ended challenges
- **Active Recall Checkpoint**: Knowledge testing
- **Reflection Prompt**: Metacognitive questions
- **Preview & Connections**: Links to upcoming concepts

## 📁 Directory Structure

```
rust-interactive-tutorial/
├── README.md
├── beginner/                    # Foundations (5 lessons)
│   ├── 01_01_setup.ipynb                    # Setup & Fundamentals (2h)
│   ├── 01_02_functions.ipynb                # Functions & Control Flow (2.5h)
│   ├── 01_03_ownership.ipynb                # Ownership & Borrowing (3h)
│   ├── 01_04_collections.ipynb              # Collections & Patterns (2.5h)
│   └── 01_05_debugging.ipynb                # Compiler Errors & Debugging (1.5h)
├── intermediate/                # Building Skills (6 lessons)
│   ├── 02_01_structs.ipynb                  # Structs, Enums & Collections (3h)
│   ├── 02_02_error_handling.ipynb           # Error Handling & Generics (2.5h)
│   ├── 02_03_traits.ipynb                   # Traits & Polymorphism (2.5h)
│   ├── 02_04_modules.ipynb                  # Modules & Organization (1.5h)
│   ├── 02_05_iterators.ipynb                # Iterators & Functional Patterns (2h)
│   └── 02_06_testing.ipynb                  # Testing & Cargo (1.5h)
├── advanced/                   # Mastery (5 lessons)
│   ├── 03_01_lifetimes.ipynb                # Lifetimes & Advanced Traits (3h)
│   ├── 03_02_smart_pointers.ipynb           # Smart Pointers & Interior Mutability (2.5h)
│   ├── 03_03_concurrency.ipynb              # Concurrency & Async (3h)
│   ├── 03_04_macros.ipynb                   # Macros & Unsafe Rust (2h)
│   └── 03_05_performance.ipynb              # Performance & Optimization (1.5h)
├── capstone-projects/          # Hands-on projects
│   ├── beginner/
│   ├── intermediate/
│   └── advanced/
├── solutions/                  # Solution notebooks
└── instructor-guides/          # Teaching resources
```

## 🎓 Assessment Strategy

- **Formative**: Active recall checkpoints (5-10 questions per lesson)
- **Summative**: Capstone projects with rubrics
- **Metacognitive**: Regular reflection prompts
- **Peer Review**: Optional code sharing mechanisms

## 🚀 Capstone Projects

### Beginner: Enhanced Number Guessing Game
- Input validation and error handling
- Score tracking and statistics
- Replay functionality
- User experience improvements

### Intermediate: CLI Data Processing Tool
- File parsing and data transformation
- Command-line argument handling
- Comprehensive error reporting
- Performance optimization

### Advanced: Concurrent Web Service or Simulation Engine
- Async HTTP server with database integration
- Multi-threaded simulation with real-time updates
- Advanced error handling and monitoring
- Production-ready architecture

## 🔧 Troubleshooting

### Common Issues
1. **Kernel not found**: Ensure evcxr_jupyter is properly installed
2. **Compilation errors**: Check Rust version compatibility
3. **Missing dependencies**: Install required crates as needed

### Getting Help
- Check the instructor guides for common student difficulties
- Review solution notebooks for reference implementations
- Consult the Rust documentation and community resources

## 📅 Two-Week Learning Schedule

Complete the entire tutorial in 2 weeks at ~20 hours/week:

### Week 1: Foundations & Building Blocks
- **Day 1-2**: B1 Setup & Fundamentals (2h) + B2 Functions & Control Flow (2.5h)
- **Day 3-4**: B3 Ownership & Borrowing (3h) + B4 Collections & Patterns (2.5h)
- **Day 5**: B5 Compiler Errors & Debugging (1.5h) + Beginner Capstone Project (3h)
- **Week 1 Total**: ~14.5 hours

### Week 2: Advanced Concepts & Mastery
- **Day 6-7**: I1 Structs, Enums & Collections (3h) + I2 Error Handling & Generics (2.5h)
- **Day 8-9**: I3 Traits & Polymorphism (2.5h) + I4 Modules & Organization (1.5h)
- **Day 10**: I5 Iterators & Functional Patterns (2h) + I6 Testing & Cargo (1.5h)
- **Day 11-12**: A1 Lifetimes & Advanced Traits (3h) + A2 Smart Pointers (2.5h)
- **Day 13-14**: A3 Concurrency & Async (3h) + A4 Macros & Unsafe (2h) + A5 Performance (1.5h)
- **Week 2 Total**: ~25.5 hours

**Total**: ~40 hours over 2 weeks

## 📈 Learning Tips

1. **Practice Regularly**: Code daily, even if just for 15-30 minutes
2. **Experiment Freely**: Modify examples to see what happens
3. **Read Error Messages**: Rust's compiler provides excellent guidance
4. **Join the Community**: Participate in Rust forums and discussions
5. **Build Projects**: Apply concepts to personal projects

## 🤝 Contributing

This tutorial series is designed to be continuously improved. Feedback, corrections, and enhancements are welcome.

## 📄 License

This tutorial series is provided under an open-source license for educational use.

---

**Happy Learning! 🦀**
