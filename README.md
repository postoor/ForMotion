motion用，簡易腳本
====

功能：
- 寄件緩衝
- 自動刪除舊照片

用法：
- 將motion.conf的 on\_picture\_save參數修改為
```
	on_picture_save picture_save.sh %f
```

腳本變數說明:

|變數		|功能				|
|:-----		|:------			|
|\_DELAY	|隔多久再傳mail(以秒為單位)	|
|\_DELAY\_FILE	|放置上次傳mail 的時間		|
|\_PICTURE\_FILE|要傳送的照片路徑		|
|\_MAIL\_ADDR	|要寄送的email address		|
|\_PICTURE\_PATH|照片存放路徑			|
|\_MAX		|照片最大數量			|
|\_LAVE\_AMOUNT	|當要刪除照片時的保留數量	|
