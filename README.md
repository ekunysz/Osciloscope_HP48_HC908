# Low-Frequency Signal Plotter

Academic project developed during the **Digital Circuits and Microprocessors** course at **Universidad Nacional de La Plata (UNLP)**. 

The goal was to design and build a **portable and low-cost prototype** for plotting low-frequency signals, in combination with a **Hewlett Packard (HP) calculator** as the display and storage device.

---

##  Project Objectives

- Build a **portable, adaptable, and cost-effective** device. 
- Capture and plot low-frequency signals using an HP calculator. 
- Maximize the capabilities of the **Motorola 68HC908QY4 microcontroller**. 
- Implement at least **two plotting modes**. 
- Provide a **simple user interface** with matrix keyboard and LCD. 
- Ensure compatibility with HP calculator software for plotting and storage. 

---

##  Basic Features

-  **Bandwidth:** around 1 kHz 
-  **Input voltage range:** 0 – 5 V 
-  **Compact design:** portable and transportable 
-  **User-friendly interface:** matrix keyboard and LCD 
-  **Plotting modes:**
-  **Capture Mode:** data acquisition over user-defined intervals. 
-  **Continuous Mode:** real-time sampling and plotting with adjustable frequency and image position. 

---

##  Design and Implementation

The prototype was implemented using a **Motorola 68HC908 microcontroller**, integrating the following hardware modules:

-  **Data acquisition and digitization** 
-  **Matrix keyboard for control input** 
-  **LCD for monitoring and verification** 
-  **Serial data transmission module** 

### Plotting Modes

- **Capture Mode:** 
  Uses the HP calculator’s **PLOT** system, allowing precise calibration of the graph. 
   High precision,  lower speed. 

- **Continuous Mode:** 
  Dynamic real-time plotting with data processing inside the microcontroller before transmission. 
   High speed,  lower resolution/flexibility. 

---

##  Software and Tools

- **Programming languages:** 
  - Motorola MCU → **Assembler** 
  - HP Calculator → **Assembler** 

- **Development tools:** 
  - **Win-Ide In Circuit Simulator** → microcontroller simulation 
  - **EMU48** → HP calculator emulator 
    - Serial/IR port access 
    - Program writing and compilation 
    - Multi-level time simulation (real-time PC clock and HP oscillator emulation) 
    - Direct load and save to PC 
  - **HyperTerminal (Windows)** → serial data transfer 

---

## Limitations and Future Improvements

- No **input filter**, which introduces noise in signals near ground level. 
- Lack of **electrical protection** on inputs/outputs (risk of damage from voltage spikes). 
- Limited graphical resolution in continuous mode. 

---

## Results

The prototype was **functional** and achieved the main goals, demonstrating: 

- Successful communication between the MCU and HP calculator. 
- Signal plotting in both modes. 
- Feasibility of a portable, low-cost, and adaptable instrument. 

---

## Credits

Project developed by **Eduardo** as part of the course 
**Digital Circuits and Microprocessors – UNLP**. 

---

