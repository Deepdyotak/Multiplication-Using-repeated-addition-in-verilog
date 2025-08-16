# Multiplier by Repeated Addition (Datapath + Controlpath)

## 📌 Project Overview
This project implements a **16-bit multiplier** using the method of **repeated addition**.  
The design is split into two modules:  
- **Datapath**: Handles registers, adder, counter, and muxes.  
- **Controlpath**: Finite State Machine (FSM) that controls the sequence of operations.  

This separation of datapath and controlpath mirrors the design style used in processors and makes the project scalable for N-bit implementations.

---

## ⚙️ Design Approach
- **Datapath Components**:
  - Register for multiplicand  
  - Register for multiplier  
  - Accumulator register  
  - Adder  
  - Counter & comparator


DATA PATH DESIGN 

<img width="1574" height="815" alt="image" src="https://github.com/user-attachments/assets/f0e06a3f-1103-4fcc-b48a-bee79a86d58d" />


- **Controlpath (FSM States)**:
  - **LOAD**: Load inputs  
  - **ADD**: Add multiplicand to accumulator  
  - **DECREMENT**: Decrement counter  
  - **CHECK**: Check if multiplier reached 0 
  - **DONE**: Stop operation



CONTROL PATH DESIGN
<img width="895" height="732" alt="image" src="https://github.com/user-attachments/assets/52c7fff9-4c12-469b-b3b0-e3407e982a93" />

Simulation results 
1st input is 17 and 2nd input is 5 .ie. 17 got added 5 times or 17*5 so result will be 85.
<img width="374" height="204" alt="image" src="https://github.com/user-attachments/assets/a868ed8f-1cdb-4b21-a102-c6e58aa17b6f" />

bout is the counter output in the simulation and y stores the result 

<img width="1576" height="806" alt="image" src="https://github.com/user-attachments/assets/064959b3-5226-4834-8502-97b0555e35fd" />




