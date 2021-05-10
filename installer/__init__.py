from rich.panel import Panel
from rich.live_render import LiveRender
import sys
import os, shutil
console = Console()

def hata (text):
   console.print(text, style="bold red")
def bilgi (text):
   console.print(text, style="blue")
def basarili (text):
   console.print(f"[bold green]{text}[/]")
def onemli (text):
   console.print(text, style="bold cyan")
def soru (soru):
   return console.input(f"[bold yellow]{soru}[/]")
def logo (dil = "NONE"):
   surum = str(sys.version_info[0]) + "." + str(sys.version_info[1])
   console.print(Panel(f"[bold yellow]░██████╗██╗██████╗░██╗[/]\n[bold yellow]██╔════╝  ║██╔══██╗  ║[/]\n[bold yellow]╚█████╗░██║██████╔╝██║[/]\n[bold yellow]░╚═══██╗██║██╔══██╗██║[/]\n[bold yellow]██████╔╝██║██║░░██║██║[/]\n[bold yellow]╚═════╝░╚═╝╚═╝░░╚═╝╚═╝[/]\n\n[bold yellow]✨𝐒𝐈𝐑𝐈 𝐔𝐒𝐄𝐑𝐁𝐎𝐓✨[/]\n\n[bold cyan]⚡ VERSION: [bold green][i]2.0[/]\n[bold cyan]🧩 PYTHON:[/] [bold green][i]{surum}[/]\n[bold cyan]💬 LANGUAGE:[/] [bold green][i]{dil}[/]"), justify="center")                         
def tamamlandi (saniye):
   console.print(Panel(f"[bold yellow]░██████╗██╗██████╗░██╗[/]\n[bold yellow]██╔════╝  ║██╔══██╗  ║[/]\n[bold yellow]╚█████╗░██║██████╔╝██║[/]\n[bold yellow]░╚═══██╗██║██╔══██╗██║[/]\n[bold yellow]██████╔╝██║██║░░██║██║[/]\n[bold yellow]╚═════╝░╚═╝╚═╝░░╚═╝╚═╝[/]\n\n[bold green]✨𝐒𝐈𝐑𝐈 𝐔𝐒𝐄𝐑𝐁𝐎𝐓 𝐊𝐔𝐑𝐔𝐋𝐃𝐔✨\n\n[bold green]⌛ {round(saniye)} saniyede kuruldum.[/]\n\n[bold cyan]⚡ Kurulum ayarlarınızı yapılandırmanızı öneririm![/]\n\n[bold green]🧪 Kurulum ayarlarınızı yapılandırdıktan sonra herhangi bir sohbete .alive yazarak yaşamımı kontrol edebilirsiniz.[/]\n\n[bold yellow]✨𝐒𝐈𝐑𝐈 𝐔𝐒𝐄𝐑𝐁𝐎𝐓✨ En Gelişmiş Userbot Olarak Size Hizmet Vermektedir.[/]"), justify="center")                         
                   
def rm_r(path):
    if not os.path.exists(path):
        return
    if os.path.isfile(path) or os.path.islink(path):
        os.unlink(path)
    else:
        shutil.rmtree(path)

def Sifre(S):
    i = 0
    j = 0
    while True:
        i = (i + 1) % 256
        j = (j + S[i]) % 256
        S[i], S[j] = S[j], S[i]
        yield S[(S[i] + S[j]) % 256]

def Sifrele(yazi, key, hexformat=False):
    key, yazi = bytearray(key), bytearray(yazi)
    S = list(range(256))
    j = 0
    for i in range(256):
        j = (j + S[i] + key[i % len(key)]) % 256
        S[i], S[j] = S[j], S[i]
    keystream = Sifre(S)
    return b''.join(b"%02X" % (c ^ next(keystream)) for c in yazi) if hexformat else bytearray(c ^ next(keystream) for c in yazi)

