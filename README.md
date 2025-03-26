

### **Introduction to FANUC Robot Programming**

- FANUC robots are a staple in industrial automation, commonly found in industries like automotive, electronics, and logistics. 
- FANUC uses proprietary programming languages: **TP language** for most tasks and **Karel** for advanced applications. These languages are designed to run on FANUC’s robot controllers and are typically programmed via a **teach pendant**, a handheld device used to control and program the robot.


---

### **Basic Concepts of FANUC TP Language**

- The TP language is the primary way to program FANUC robots. It’s a textual, structured language (similar to BASIC or Pascal) that you write and edit directly on the teach pendant
- Used for basic programming, it involves defining positions and simple motion commands, suitable for tasks like pick-and-place. It lacks advanced constructs like loops but supports labels and jumps for basic repetition.
#### **Syntax and Structure**
- Programs are written line-by-line, with each line typically holding one command.
- Comments start with an exclamation mark: `! This is a comment`.
- Labels (e.g., `LBL[1]`) help control program flow, like jumping to specific sections.

#### **Key Commands**
1. **Motion Commands**  
   These tell the robot where and how to move:
   - `J P[1] 100% FINE`: Moves the robot to position `P[1]` using joint motion at 100% speed with high precision (FINE).
   - `L P[2] 500mm/sec CNT100`: Moves linearly to position `P[2]` at 500 mm/sec with continuous blending (CNT100), avoiding a full stop.
   - Positions like `P[1]` are predefined using the teach pendant by jogging the robot to a spot and recording it.

2. **Input/Output (I/O) Commands**  
   These control external devices like grippers or sensors:
   - `DO[1]=ON`: Turns on digital output 1 (e.g., to close a gripper).
   - `WAIT DI[1]=ON`: Pauses the program until digital input 1 is on (e.g., a sensor detects a part).

3. **Registers**  
   Registers store data, similar to variables in ROS:
   - `R[1]=5`: Sets register 1 to 5.
   - `PR[1]=P[1]`: Assigns position `P[1]` to position register 1 for dynamic adjustments.

4. **Program Flow**  
   TP uses simple logic to control execution:
   - `JMP LBL[1]`: Jumps to label 1.
   - `IF R[1]>0 THEN JMP LBL[2]`: Jumps to label 2 if register 1 is greater than 0.

#### **How It Works**
- You create TP programs on the teach pendant, often by combining manually taught positions with commands.
- Programs run sequentially, step-by-step, unlike ROS’s real-time, distributed approach.
- Debugging is done by stepping through lines on the pendant.


---

### **A Quick Look at Karel**
Karel: A higher-level language, similar to Pascal, enabling complex logic, loops, conditionals, and integration with external systems. It’s ideal for tasks requiring dynamic decision-making or extensive data handling.
While TP is great for standard tasks, **Karel** is FANUC’s advanced language, similar to Pascal. It’s compiled (not edited on the pendant) and used for:
- Complex logic (e.g., loops, conditionals).
- Custom interfaces on the teach pendant.
- Integration with external systems like vision or databases.


---

