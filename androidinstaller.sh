SIRI="░██████╗██╗██████╗░██╗"
SIRI+="\n██╔════╝  ║██╔══██╗  ║"
SIRI+="\n╚█████╗░██║██████╔╝██║"
SIRI+="\n░╚═══██╗██║██╔══██╗██║"
SIRI+="\n██████╔╝██║██║░░██║██║"
SIRI+="\n╚═════╝░╚═╝╚═╝░░╚═╝╚═╝"
SIRI+="\n✨𝐒𝐈𝐑𝐈 𝐔𝐒𝐄𝐑𝐁𝐎𝐓 𝐈𝐍𝐒𝐓𝐀𝐋𝐋𝐄𝐑✨"
MESAJ="\n📱Siri UserBot İnstaller Android Kurulum📱"
MESAJ+="\nBizi Tercih Ettiğiniz İçin Teşekkür Ederiz"
MESAJ+="\nBüyüdükçe Gelişmeye Geliştikçe Büyümeye Devam Ediyoruz"
MESAJ+="\n "
MESAJ+="\n📣 GÜNCELLEME DUYURU; @SiriUserbot"
MESAJ+="\n🆘 YARDIM GRUBU; @SiriSupport"
MESAJ+="\n🧩 PLUGIN PAYLAŞIM; @SiriPlugin"
MESAJ+="\n📲 WHATSAPP BOTU; @WhatsSiri"
MESAJ+="\n "
MESAJ+="\n❗İşlem Bitene Kadar Uygulamayı Terk Etmeyin❗"
YARDIM="\n❗❗ %50, %70 VE %75'te Durakaladığında Y Yazıp Enter Yapınız ❗❗"
YARDIM+="\n "
BOSLUK="\n "
echo -e $SIRI
echo -e $YARDIM
echo "⏳ TERMUX GEREKSİNİMLERİNİ GÜNCELLİYORUM ⏳"
echo "⏳ I UPDATE YOUR REQUIREMENTS ⏳"
echo -e $BOSLUK
pkg update -y
clear
echo -e $SIRI
echo -e $BOSLUK
echo -e $MESAJ
echo "⌛ CİHAZINIZA PYTHON KURULUYOR ⌛"
echo "⌛ PYTHON IS INSTALLED ON YOUR DEVICE ⌛"
echo -e $BOSLUK
pkg install python -y
pip install --upgrade pip
clear
echo -e $SIRI
echo -e $MESAJ
echo -e $BOSLUK
echo "⌛ GIT KURULUYOR ⌛"
echo "⌛ INSTALLING GIT ⌛"
echo -e $BOSLUK
pkg install git -y
clear
echo -e $SIRI
echo -e $MESAJ
echo -e $BOSLUK
echo "⌛ TELETHON KURULUYOR ⌛"
echo "⌛ INSTALLING TELETHON ⌛"
echo -e $BOSLUK
pip install telethon
clear
echo -e $SIRI
echo -e $MESAJ
echo -e $BOSLUK
echo "⌛ SİRİYİ İNDİRİYORUM ⌛"
echo "⌛ I DOWNLOAD THE SIRI ⌛"
echo -e $BOSLUK
git clone -b installer https://github.com/BlackOrderUserBot/BlackOrderUserBot
clear
echo -e $SIRI
echo -e $BOSLUK
echo -e $MESAJ
echo -e $BOSLUK
echo "⌛ GEREKSİNİMLERİ KURUYORUM..."
echo "⌛ INSTALLING REQUIREMENTS..."
echo -e $BOSLUK
cd BlackOrderUserBot
pip install wheel
pip install -r requirements.txt
python -m installer
