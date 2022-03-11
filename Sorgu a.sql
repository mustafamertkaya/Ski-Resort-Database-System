SELECT ad,soyad
FROM kisibilgileri
group by tc having kisibilgileri.tc IN (SELECT tc
		FROM kartbilgileri
		group by kartid having kartbilgileri.kartid IN (SELECT kartid
				FROM pistkartiliskisi
				group by pistid having pistkartiliskisi.pistid IN (SELECT pistid
						FROM teleferikbilgileri
						group by pistid having count(teleferikid) > 2)))