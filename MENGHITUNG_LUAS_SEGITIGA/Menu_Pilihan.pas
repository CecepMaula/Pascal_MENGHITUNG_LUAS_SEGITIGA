program Menu_PIlihan;
{I.S : User Memilih Menu Pilihan Yang Di Sedikan}
{F.S : Menapilkan Menu Pilihan Yang Di Pilih Oleh User}
uses crt;
var
 Pilih, x, y : integer;


 Procedure MenuPilihan(var Pilih: integer);
 {I.S : User Memasukkan Nilai Pilih }
 {F.S : Mengeluarkan Nilai Pilih untuk Digunakan Program Utama}
 begin
 textcolor(yellow); textbackground(green); clrscr;
 gotoxy(54,5);write('Menu Pilihan');
 gotoxy(54,6);write('============');
 gotoxy(46,8);write('1. Luas Segitiga');
 gotoxy(46,9);write('0. Keluar');
 gotoxy(46,10);write('Pilihan Anda ? ');readln(Pilih);

 { Validasi}
 while(pilih < 0) or (pilih > 3) do
   begin
     textcolor(yellow);
     gotoxy(46,15);write('Hanya Tersedia 0 - 1 !!');
     gotoxy(46,16);write('Tekan Enter untuk Memasukkan Kembali');readln;
     {Bersihin Layar}
     gotoxy(46,15);clreol;
     gotoxy(46,16);clreol;
     textcolor(white);
     {Re Input}
     gotoxy(61,13);clreol; readln(Pilih);
   end; { End While }
 end; { End Procedure MenuPilihan }

 Procedure InputAT(var x,y : integer);
  begin
  clrscr;
  gotoxy(38,4);write('MEMASUKKAN NILAI ALAS DAN TINGGI');
  gotoxy(38,5);write('============================================');
  gotoxy(38,7);write('Masukkan Nilai Alas  : '); readln(x);
  gotoxy(38,9);write('Masukkan Nilai Tinggi: '); readln(y);
 end;

 function Hitung_Luas(x,y: integer) : real;
  begin
  Hitung_Luas := (x*y)/2;
 end;

 Procedure TampilLuas(x,y : integer);
  begin
  clrscr;
  gotoxy(47,5);write('Nilai Alas : ',x);
  gotoxy(47,6);write('Nilai Tinggi : ',y);
  gotoxy(47,9);write('Hasil : ',Hitung_Luas(x,y):0:1);
  readln;
 end;





begin
 Repeat
   clrscr;
   MenuPilihan(Pilih);
     case Pilih of
          1 : begin
                InputAT(x,y);
                clrscr;
                TampilLuas(x,y);
              end;
          end;




 Until(Pilih = 0);
end.
