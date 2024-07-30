import subprocess

def execute_userstory(userstory_nr):
    if userstory_nr == '2':
        subprocess.run(['python3', 'brukerhistorie2.py'])
    elif userstory_nr == '3':
        subprocess.run(['python3', 'brukerhistorie3.py'])
    elif userstory_nr == '4':
        subprocess.run(['python3', 'brukerhistorie4.py'])
    elif userstory_nr == '5':
        subprocess.run(['python3', 'brukerhistorie5.py'])
    elif userstory_nr == '6':
        subprocess.run(['python3', 'brukerhistorie6.py'])
    elif userstory_nr == '7':
        subprocess.run(['python3', 'brukerhistorie7.py'])
    else:
        print("Ugyldig brukerhistorie.")


def main():
    subprocess.run(['python3', 'brukerhistorie1.py'])
    while True:
        userstory_nr = input("Velg brukerhistorie (2-7) eller skriv 'stopp' for å avslutte: ")
        if userstory_nr.lower() == 'stopp':
            break
        else:
            execute_userstory(userstory_nr)
main()         
