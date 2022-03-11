select teleferikbilgileri.pistid, count(teleferikbilgileri.teleferikid) as teleferik_sayısı
from teleferikbilgileri
group by teleferikbilgileri.pistid 
