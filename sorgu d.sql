select year(kartbilgileri.yilbilgileri) as Yıl ,sum(pistbilgileri.pistsezonlukucret) as ToplamÜcret
from kartbilgileri,pistbilgileri,pistkartiliskisi 
where pistkartiliskisi.pistid=pistbilgileri.pistid and pistkartiliskisi.kartid=kartbilgileri.kartid 
group by year(kartbilgileri.yilbilgileri)where kisibilgileri.tc=kisiekipmaniliskisi.tc and
ekipmanbilgileri.ekipmanid=kisiekipmaniliskisi.ekipmanid 
group by kisibilgileri.tc