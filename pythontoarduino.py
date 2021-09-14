import serial

# define the serial port and baud rate.
ser = serial.Serial('COM3', 9600)

while True:
    user_input = input("\n Type on / off / quit : ")
    if user_input =="on":
        print("LED is on...")
        ser.write(b'H') 

    elif user_input =="off":
        print("LED is off...")
        ser.write(b'L')

    elif user_input =="quit" or user_input == "q":
        print("Program Exiting")
        ser.write(b'L')
        ser.close()
        quit()
        
    else:
        print("Invalid input. Type on / off / quit.")
        

