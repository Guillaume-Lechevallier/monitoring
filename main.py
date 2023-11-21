import pystray
from pystray import MenuItem as item
from PIL import Image

def on_quit(icon, item):
    icon.stop()
def ontest(icon,item):
    print("jequitte")

# Définition de l'icône
image = Image.open("D:\Download\Icon.ico")  # Remplacez par le chemin de votre propre icône
menu = (item('Quit', on_quit),item('test',ontest))

# Création de l'icône dans la barre des tâches
icon = pystray.Icon("name", image, "Title", menu)
icon.run()
