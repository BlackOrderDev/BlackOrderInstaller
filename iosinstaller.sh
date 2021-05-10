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
echo -e $MESAJ
echo "⏳ TERMUX GEREKSİNİMLERİNİ GÜNCELLİYORUM ⏳"
echo "⏳ I UPDATE YOUR REQUIREMENTS ⏳"
echo -e $BOSLUK
echo y | apk update
clear
echo -e $SIRI
echo -e $MESAJ
echo "⌛ CİHAZINIZA PYTHON KURULUYOR ⌛"
echo "⌛ PYTHON IS INSTALLED ON YOUR DEVICE ⌛"
echo -e $BOSLUK
echo y | apk add python3
clear
echo -e $SIRI
echo -e $MESAJ
echo "⌛ GIT KURULUYOR ⌛"
echo "⌛ INSTALLING GIT ⌛"
echo -e $BOSLUK
echo y | apk add git
clear
echo -e $SIRI
echo -e $MESAJ
echo "⌛ TELETHON KURULUYOR ⌛"
echo "⌛ INSTALLING TELETHON ⌛"
echo -e $BOSLUK
python3 -m pip install telethon
clear
echo -e $SIRI
echo -e $MESAJ
echo "⌛ SİRİYİ İNDİRİYORUM ⌛"
echo "⌛ I DOWNLOAD THE SIRI ⌛"
echo -e $BOSLUK
git clone -b installer https://github.com/ErdemBey1/SiriUserBot
clear
echo -e $SIRI
echo -e $MESAJ
echo "⌛ GEREKSİNİMLERİ KURUYORUM ⌛"
echo "⌛ INSTALLING REQUIREMENTS ⌛"
echo -e $BOSLUK
cd SiriUserBot
python3 -m pip install wheel
python3 -m pip install -r requirements.txt
clear
python3 -m installer