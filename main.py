import pystray
from pystray import MenuItem as item
from PIL import Image
import subprocess

def on_quit(icon):
    icon.stop()
    # Fonction pour afficher une boîte de dialogue

def ontest():
    # Chemin vers le script PowerShell
    chemin_script_ps = r'clientmessagebox.ps1'

    # Commande PowerShell à exécuter
    commande_ps = f'powershell.exe -File "{chemin_script_ps}"'

    # Exécution de la commande PowerShell depuis Python
    try:
        subprocess.run(commande_ps, check=True, shell=True)
    except subprocess.CalledProcessError as e:
        print(f"Une erreur s'est produite : {e}")


# Définition de l'icône
image = Image.open("D:\Download\Icon.ico")  # Remplacez par le chemin de votre propre icône
menu = (item('Quit', on_quit),item('test',ontest))

# Création de l'icône dans la barre des tâches
icon = pystray.Icon("name", image, "Title", menu)
icon.run()
