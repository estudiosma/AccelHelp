# 📦 AccelHelp

**AccelHelp** is a portable system designed to acquire accelerometer signals in biomedical, educational, or research applications. Its design combines compact hardware with a simple interface for capturing, visualizing, and analyzing data online.

![Product](img/Product.png)

AccelHelp is available as a **ready-to-use physical product**, with personalized technical support and comprehensive documentation.

📲 **Do you want to purchase the device?**

Order a device directly by [**WhatsApp here**](https://wa.me/593979287659?text=Hello%21+I+wish+to+purchase+the+device+%2AAccelHelp)

---

## 🚀 Highlighted Features

- ✅ Online capture of 3-axis accelerometer signals.
- 🛠️ Viewing and recording with **SerialHelp** software.
- 💾 Data logging in `.txt` files for later analysis.
- 🧪 Scripts for analysis in **Matlab / Octave**.
- 🩹 Velcro fastening: quick and non-invasive installation.

![System](img/System.png)

---

## Technologies used

### Software:
- [SerialHelp](https://github.com/estudiosma/serialhelp)

### Hardware:
- **ESP32** microcontroller with Serial-USB interface.
- 3-axis accelerometer **MPU-6050**.
- USB port.

---

## 🔌 Quick connection guide

1. Connect **AccelHelp** to your PC using the USB cable.
2. Open **Device Manager** and locate the `USB-SERIAL CH340` port.
3. Run the **SerialHelp** software.
4. If it doesn't connect automatically, go to:
`Settings → Search for Port → Select COM → Save`.

---

## 📊 Data analysis with Matlab/Octave

The project includes scripts for importing and graphing the signals:

```matlab
addpath('ma_functions'); % download here: https://github.com/estudiosma/matlab
data = readmatrix('test.txt');
fs = 50; % Frecuencia de muestreo en Hz
t = (0:length(data)-1)/fs;
data_d = ma_detrend(data, 1);
ma_fft_plot(data_d, fs);
plot(t, data_d);
legend("AccX", "AccY", "AccZ");
```
![System](img/fft.jpg)



## Credits and attribution

This project was developed by **Estudios MA**, focusing on biomedical acquisition systems and signal analysis.

If you use this code, hardware, or documentation as part of your personal or academic project, **please reference:**

Molina-Vidal, D.A., Estudios MA (2025). AccelHelp. Available online: https://github.com/estudiosma/AccelHelp

## ✍️ Author

**Estudios MA – Electronic and Biomedical Engineering**  
Eng. Danilo Molina, M.Sc  
📧 estudiosma01@gmail.com  
🌐 [https://linkfly.to/EstudiosMA](https://linkfly.to/EstudiosMA)