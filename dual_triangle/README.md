Diketahui potongan code ASM Linux 64 Bit berikut ini

```asm
section .rodata
  a01 db 42
  a03 db 10
section .data
  global _start
_start:
  mov r9,3
  call tgr
  call exit
exit:
  mov rax,60
  xor rdi,rdi
  syscall
  ret
tgr:
```

### Buatlah subroutine tgr yang menggunakan register r9 sebagai parameter agar program tersebut dapat membuat 2 segitiga seperti ketentuan berikut ini:

1. Jumlah satuan sisi segitiga digambarkan sebagai karakter "*".
2. Kedua segitiga selalu sama sisi (sama sisi berdasarkan hitungan satuan pada ketentuan no.1).
3. Jumlah sisi mengikuti nilai register r9.
4. Terdapat jarak satu breakline antara segitiga satu dan dua.
5. Hanya diperbolehkan menggunakan syscall murni tanpa external library.
6. Posisi segitiga harus sama seperti pada contoh berikut ini.

Contoh:
Jika r9 == 3, maka outputnya
```
***
**
*

*
**
***
```


Jika r9 == 4, maka outputnya
```
****
***
**
*

*
**
***
****
```

Jika r9 == 5, maka outputnya
```
*****
****
***
**
*

*
**
***
****
*****
```

dan seterusnya ...