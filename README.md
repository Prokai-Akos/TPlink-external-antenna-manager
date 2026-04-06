# TPlink external antenna manager
This project is meant to provide a cli utility for managing a tplink external antenna, and in the future any other external antennas

# Current Capacity
As of now the it is 2 separate scripts, one used for connecting and one used for disconnecting the external antenna. The connection script has some error handling and color coding implemented.

# Goals for the project
The main goal of the project is to provide a program/script that can be a proper cli utility for managing all types of external antennas. The user will be able to set the desired interface name (this can be accessed with checking nmcli device command) and from there the program will manage connections for the user, providing all necessary information and processing user input.