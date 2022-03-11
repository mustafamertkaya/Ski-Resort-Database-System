select kisibilgileri.ad,kisibilgileri.soyad, sum(ekipmanbilgileri.ekipmangunlukucret) as toplamucret
from kisibilgileri,kisiekipmaniliskisi,ekipmanbilgileri 
where kisibilgileri.tc=kisiekipmaniliskisi.tc and ekipmanbilgileri.ekipmanid=kisiekipmaniliskisi.ekipmanid
group by kisibilgileri.tc