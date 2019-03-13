# File-System-Crawler
Swift program that input the file path and return all the directory and files as a file tree
Example OutPut
Swift
 ├─ .DS_Store
 ├─ .git
 │   ├─ config
 │   ├─ description
 │   ├─ FETCH_HEAD
 │   ├─ HEAD
 │   ├─ hooks
 │   │   └─ README.sample
 │   ├─ index
 │   ├─ info
 │   │   └─ exclude
 │   ├─ logs
 │   │   ├─ HEAD
 │   │   └─ refs
 │   │       ├─ heads
 │   │       │   └─ master
 │   │       └─ remotes
 │   │           └─ origin
 │   │               └─ master
 │   ├─ objects
 │   │   ├─ 00
 │   │   │   └─ c5453b7982fd37845a0d39b7b10271d7daf269
 │   │   ├─ 01
 │   │   │   └─ 0664e35ea6798d79f483b6c57fd2855eb875ed
 │   │   ├─ 04
 │   │   │   ├─ 445b300012eb2fd6e9ddfb7ca633c11203733f
 │   │   │   └─ 4fb5b8b83dd7db6c7d08ec3beadf4f94017095
 │   │   ├─ 08
 │   │   │   ├─ b18f90c17768270411cdaa8ae196bfc5ece1d5
 │   │   │   └─ de1d9f86cc71ef011da99626024ab93d650a00
 │   │   ├─ 09
 │   │   │   └─ c27670fb843fc360290a71921596c0f3225a69
 │   │   ├─ 0a
 │   │   │   └─ d2ee83badbcf91f2b63036a091cebbd129203b
 │   │   ├─ 0c
 │   │   │   └─ a093c643cb01200a81934df6464d9f9be42ae9
 │   │   ├─ 10
 │   │   │   ├─ 19f8dd1bb04e74ecd38b2575acdf1ae599ff55
 │   │   │   ├─ 88417a554c663ac5767abc39e57c8878ae6e9a
 │   │   │   └─ f46a4fc7919dfa5d059a1555a6fc0b3b2f0477
 │   │   ├─ 11
 │   │   │   └─ 8a4761e6e44f9dc8b10e1cb02515dbc5d14f83
 │   │   ├─ 12
 │   │   │   ├─ 9e00ecb49ab6ee1a3a55a66c07eaf0ddd25ffd
 │   │   │   └─ b13a920f1cc058ef0658aeabb9d2094233e245
 │   │   ├─ 13
 │   │   │   ├─ 89808a9f52a60ab1cca8abc4a85c3ac3c78fc3
 │   │   │   └─ efdb770b5c8d16181d8b7dba050e014fad7146
 │   │   ├─ 15
 │   │   │   └─ 8e1f43dcefdf027cc5fa166d39a310b8a74085
 │   │   ├─ 16
 │   │   │   └─ 3e0cec5560fb2df156ad9f02d6e029f8f7d561
 │   │   ├─ 17
 │   │   │   └─ 2b7e6cb8f8ace34fc84f00b21bfdd4dbb88d7b
 │   │   ├─ 18
 │   │   │   ├─ c8506079b433374d7d3daacd2ddafb900f5b66
 │   │   │   └─ d981003d68d0546c4804ac2ff47dd97c6e7921
 │   │   ├─ 19
 │   │   │   ├─ 26bc48b1a9b3ee49825970a2abd7769cc73d60
 │   │   │   └─ 7fe8ba1796939f9e4c1f946bb05c1aa33535eb
 │   │   ├─ 1b
 │   │   │   └─ a8944dbbe1efaf1e9970f4d731b6a998a80808
 │   │   ├─ 1e
 │   │   │   ├─ 55844014f6633198ae2df0d362dc8a51989a18
 │   │   │   └─ 9095ca0defa7b03a33f025c00a5a5a2fb6865e
 │   │   ├─ 21
 │   │   │   ├─ 08325cfb22416028273009505334936d3464a6
 │   │   │   └─ 64ec4f152e6ab5ad62627fa098959c1285b851
 │   │   ├─ 23
 │   │   │   └─ 995790344ccc9d21425879c797a88e75197fa1
 │   │   ├─ 28
 │   │   │   ├─ 00bba0eb9d336049cad3dc9cb14e0554f90739
 │   │   │   └─ ddf9388486cc85af9e1246698807cbe3a4ceb2
 │   │   ├─ 2b
 │   │   │   └─ 48e0039312131dbf0e867c96ba53b8af8feb8a
 │   │   ├─ 2c
 │   │   │   ├─ 3ded11f7f33a8b2d8c009da6d57ce536ede100
 │   │   │   └─ cef4df921c4133291785646ff70a260967d17d
 │   │   ├─ 2d
 │   │   │   └─ b2df8ca85000af95dd5b1b54b7b84d713297f5
 │   │   ├─ 30
 │   │   │   └─ 0abf4019715854239d0354a6b11c9f42599bb7
 │   │   ├─ 31
 │   │   │   ├─ 48b01b7e2d3092fae75ae4c35d4ccc56d33130
 │   │   │   └─ e7a3658bd7f3b3d80310069f02b1891b7c91fd
 │   │   ├─ 32
 │   │   │   └─ a0540ae0746e803f189d598d8b300d39026830
 │   │   ├─ 33
 │   │   │   └─ 75ccb62f8cb5637deef12f376bd09095bfce29
 │   │   ├─ 34
 │   │   │   ├─ 362f07db3b7c8f34577c56d1e063c7170836b7
 │   │   │   ├─ ae4b45a8ace4a32b3ad71cc1b37b2a855b9f7d
 │   │   │   └─ c3a7d639187c5c6bf804ade121bcc3ac320af3
 │   │   ├─ 35
 │   │   │   └─ 968656f506ffce1ba78d4f565c590c4bf82642
 │   │   ├─ 36
 │   │   │   └─ 837a3898d741deb587b0a99ae35fa6285be3b9
 │   │   ├─ 38
 │   │   │   └─ a83edc29c1b70785c7c498277ce7c934ffa79f
 │   │   ├─ 3c
 │   │   │   └─ c2b793ebba2d1953f14e558f7b7868d0b3ef29
 │   │   ├─ 3e
 │   │   │   ├─ 2ac749a8062aed50387970ba708c84d31c00f6
 │   │   │   ├─ 2c97bcd7450542712aba46805a897e45ba6aeb
 │   │   │   ├─ 2f6794efe813d28edd5371d1bcae0a9911c469
 │   │   │   └─ 4399bc572399d438bdd0c00b20c784ee04c6c6
 │   │   ├─ 3f
 │   │   │   ├─ 35821d15a145002ff0473fd91e538b58e7d439
 │   │   │   ├─ d5e855a34a2606dff296c6732576bfa8141244
 │   │   │   └─ fe260281f7d8d3b2a01a9e12f82d37a633d779
 │   │   ├─ 44
 │   │   │   ├─ 36878b387326b75064903d32d1a09224bde5d3
 │   │   │   └─ a191ba1bf6e9d2ee76814c45e7e7394085d33e
 │   │   ├─ 45
 │   │   │   ├─ 6749c3c0bd343d0733b040c6fa6e983a004667
 │   │   │   └─ efcaeed54a6668c52e9a0d552252c3f5951458
 │   │   ├─ 47
 │   │   │   └─ ad6b0a08d0cafde158e240604a13cc02645d32
 │   │   ├─ 48
 │   │   │   └─ 5653ee9955bfa6868153d53af10868d6f82508
 │   │   ├─ 49
 │   │   │   └─ 6fd520860205988799f9389747c4d819883b78
 │   │   ├─ 4a
 │   │   │   └─ 511a8cd8771b645ed3dd29be86e9dd2742f024
 │   │   ├─ 4b
 │   │   │   └─ d2170c7bdcfc7c03a6f477767ea819e84bddca
 │   │   ├─ 4c
 │   │   │   ├─ 0a4abbe94689de90ddf770cf11351a8866ec8a
 │   │   │   └─ 9aefdb24f0ba7ab822c397b3a0616e7381fb0e
 │   │   ├─ 4f
 │   │   │   └─ 0b83115d2b76138235a7b7bf11ee9ccb71b1f1
 │   │   ├─ 50
 │   │   │   └─ 9cc762cd4dc8c64af68027a25b1d3914942440
 │   │   ├─ 51
 │   │   │   ├─ c4a433e83b963f0e2691dcf2bee7677b576651
 │   │   │   └─ d21bb6f2293f5e9379918742c22522a594a7fa
 │   │   ├─ 54
 │   │   │   └─ 6129a75b9e33a1d25d1c5e3677512e7f6a946f
 │   │   ├─ 55
 │   │   │   └─ 0f5cbfcf7bb41f2463a6a49b89d84375be2d60
 │   │   ├─ 57
 │   │   │   ├─ 55fd67d94221fb07d55abc473e4f07756c8bd1
 │   │   │   └─ 628e2e6c75a0250a22df088e4f69ec17d7319b
 │   │   ├─ 58
 │   │   │   ├─ 5335107e6b63851b399eb58a3d899f935e08d7
 │   │   │   ├─ d0b1645d4ba76d7b31b990c433c1eb69d1a58a
 │   │   │   └─ d7d9db4a31fc900444c647ec707f8d147e3c4e
 │   │   ├─ 59
 │   │   │   ├─ 6f5353af0d8634a0007c182b6be04686d2b4ed
 │   │   │   ├─ 91c51e20b12f576cc2820baa59efe3df13c167
 │   │   │   └─ 96b81bb6b205ea96091a33abc54b6abc5f87b4
 │   │   ├─ 5b
 │   │   │   ├─ 29f069e39108a7610babebbb2bbb46ea617b06
 │   │   │   ├─ 9f92eb6671c24ab11f3632709b832a9513e6e5
 │   │   │   └─ f5f165989a0d610362163f7e8a039242bb597f
 │   │   ├─ 5d
 │   │   │   ├─ 1c3fe17e76dbc1e6884a7eba4bc67a253ceadf
 │   │   │   └─ ebe1ca3d1c4da58cf0a03b865d768582d5f618
 │   │   ├─ 5e
 │   │   │   └─ a8230ea18a1cce5cc4ce4499711e4a11c8c8e3
 │   │   ├─ 5f
 │   │   │   └─ 6df023a20b185482918c831f1f7d5cd5c8d41b
 │   │   ├─ 60
 │   │   │   └─ 0392d7fb3e0057f90f544ce08725cdc07b1528
 │   │   ├─ 61
 │   │   │   └─ a296aa13a0d3ef525bfe83848e6486e0e60e46
 │   │   ├─ 63
 │   │   │   └─ a47621b341e792143b62a5eec6ed607f0a7681
 │   │   ├─ 64
 │   │   │   ├─ 42e72a73dfd5742e48ba6eae0d2fb4cf5c5d6b
 │   │   │   └─ 920823c99c8801a82c43dd82a7505b05a08ee5
 │   │   ├─ 65
 │   │   │   └─ 734856dbca7f2bb934e93ceb36dee688c0e9d5
 │   │   ├─ 66
 │   │   │   ├─ 09cf23f900da6213423a394909c00624689113
 │   │   │   └─ 1f2cd1e4e43a37dd58135af57419d1b4e1d818
 │   │   ├─ 67
 │   │   │   └─ b9d546a89bcbabbbb770f219f5ed6d2c299d29
 │   │   ├─ 69
 │   │   │   ├─ 2ffc444b19aa85e7f091f25e18289077954c59
 │   │   │   └─ ea90968c821b138fdb6ef38c85411bcfe51ca9
 │   │   ├─ 6b
 │   │   │   ├─ bd0a56b3d154b58a2d921b9e0172f7ef471e85
 │   │   │   └─ d64d7077eaf5b55cdae7111bc623f7a1ece3e4
 │   │   ├─ 6c
 │   │   │   ├─ 422caa7743c8a7496c85fc5971d60cda18fabd
 │   │   │   └─ eabd5347d5cc6933c877edb5364daf85c5f160
 │   │   ├─ 6e
 │   │   │   └─ 7f89db915129781263b329d99f3813b31d3852
 │   │   ├─ 6f
 │   │   │   ├─ 0254c7881775f3a59a819260ea1dada5d94012
 │   │   │   └─ 715e284873f2a28108f54943e22bec1c7dc4fa
 │   │   ├─ 70
 │   │   │   └─ c81c0fabef906d2efeb41fe218de4343ab52ea
 │   │   ├─ 74
 │   │   │   └─ 42ba5b6cfac22601ea94fbc5587473ed3b2141
 │   │   ├─ 79
 │   │   │   └─ 7ef638dfb8ebcd25f470cd98540e53380331b7
 │   │   ├─ 7b
 │   │   │   ├─ c52741c5752a4a8e1542a8e67f572393d2fffd
 │   │   │   └─ dfcd9d15fced0f1fae49925f6ea88d7e0699b7
 │   │   ├─ 7c
 │   │   │   ├─ b0d7363ca48960dce38a1864a329710d73a810
 │   │   │   └─ d0888146467c46867f8dcade73359ba3edff19
 │   │   ├─ 7e
 │   │   │   └─ 60ad0eaf84b02928f9cada7644c1b306caff08
 │   │   ├─ 7f
 │   │   │   ├─ 8ceedf14c0a08745bcc81536699709852ddb42
 │   │   │   └─ a48dfa36c11400d9bad8019b5a595a29157dbe
 │   │   ├─ 80
 │   │   │   └─ a38c997a3bca5e8ecee6f1bed16879b53b2eab
 │   │   ├─ 84
 │   │   │   └─ f5fd7838eb33e5ea46e38dc49e265be5f7cf1f
 │   │   ├─ 85
 │   │   │   └─ 703564226813488315fc10de65e1653d054822
 │   │   ├─ 87
 │   │   │   └─ bbaf1d486d438cd94400c24e08992b54dddab1
 │   │   ├─ 88
 │   │   │   └─ e57b16e9b4edfb30f2e9fd05edd875b2dfb797
 │   │   ├─ 89
 │   │   │   ├─ 391d879c240c8475b680674a2c0ae30a88d75a
 │   │   │   └─ da2d4706969676ff619315ec9156660470e276
 │   │   ├─ 8c
 │   │   │   ├─ cf265deff0c5027bb404acdd0450ff16575d5c
 │   │   │   └─ eea90b7f9abfc88590e39a1dd4667a93e0bd00
 │   │   ├─ 8d
 │   │   │   ├─ 10458532650e5d73ea56d5021b954ad2f42ef2
 │   │   │   └─ ac80d2521beb76f1271e9ba92ed76f00b405d2
 │   │   ├─ 8f
 │   │   │   └─ 57b70851540e9991452702c7dc6af6fc157544
 │   │   ├─ 90
 │   │   │   ├─ a646b6c622783c472a5ced2d2e673e74fde9bc
 │   │   │   └─ e9a0fbb84f806b2efd416472c646d5a87c111f
 │   │   ├─ 91
 │   │   │   └─ b3947cc39760bd45fffb5fa835ead7e369e8f9
 │   │   ├─ 96
 │   │   │   ├─ 16b81c4cbec3d4570aac2a7ff8944a3017e913
 │   │   │   └─ 17ca732aa0757d477439e2a6b13eb109788a5f
 │   │   ├─ 97
 │   │   │   └─ 3f26ab692c5f79685830cddcb0e07b64e202d7
 │   │   ├─ 98
 │   │   │   ├─ 275622d2afe4072a57d192fd748be86880ff77
 │   │   │   └─ 47aec5126c0836d2411273bd51339b798f9164
 │   │   ├─ 99
 │   │   │   └─ 73bdb16cc7e58e5567f134c34ea158999ea592
 │   │   ├─ 9c
 │   │   │   └─ ad0a02a42fe8ebc495c8ca3967644cf0bd97e2
 │   │   ├─ 9d
 │   │   │   ├─ 7949c14cff5bb4e7a17dcb2884c46167548423
 │   │   │   └─ 81908158fdda6be8f77f00ab80bf4abf13979a
 │   │   ├─ 9e
 │   │   │   └─ b09af4236a0fb96ae50863244030c17506a464
 │   │   ├─ 9f
 │   │   │   ├─ 336c0cfeebcad29512d6711b5a3205596a6a28
 │   │   │   ├─ a5ae651982a680dabf956f6bc635b5073bd32e
 │   │   │   └─ e8aabfbccdc0f7b6cf434c80144aabc6575014
 │   │   ├─ a2
 │   │   │   ├─ 266baba8b9636f223d7035971ce08adfe53c93
 │   │   │   ├─ 3427322a9e854f86db3906dfaa0e60f4bdbc68
 │   │   │   └─ 408186f3bb5501ed8510ae19782ffd96c6a347
 │   │   ├─ a4
 │   │   │   ├─ 65a44b42d98215ba6690be63f192850b5681a7
 │   │   │   ├─ 72153ed6757a39089c9756f3f73621169cecaf
 │   │   │   └─ de5b271b5a5fe116b0a22782387a02d23a9906
 │   │   ├─ a5
 │   │   │   └─ 3d4dbebc2b119d8c64384a2436b60f34f7ea8a
 │   │   ├─ a8
 │   │   │   └─ 44683d5953e86ea41c0f17490b1116e9d60d50
 │   │   ├─ aa
 │   │   │   ├─ 050dfdaa597d84c913a30f10a05a27587ba6e1
 │   │   │   └─ 525ec835ad0933792f33d6a373cb7112c66653
 │   │   ├─ af
 │   │   │   ├─ adb92fc70e79cd0f47166dc4c0e65057de33fb
 │   │   │   └─ b9386f33a8e5dce71a722ac98967cf097792d3
 │   │   ├─ b0
 │   │   │   └─ f34d5c99529fb65c1151955a073fa1dfd85c36
 │   │   ├─ b2
 │   │   │   └─ d52e7f3abedf2f09100d9b5341f9d0defc70c7
 │   │   ├─ b5
 │   │   │   ├─ 85dc8ddec356295d0ca50dc99103e92307fa28
 │   │   │   └─ a7b16e312902cc1cb720e986b0a5f41c462a26
 │   │   ├─ b7
 │   │   │   └─ 21a85b1d42d006d82a9c2718bfff8ea8b387f7
 │   │   ├─ b9
 │   │   │   └─ f5e622fbd8159aae455711b48b4f529efed25a
 │   │   ├─ ba
 │   │   │   └─ 54a18dd31ff541596581acde5958c6a676af1f
 │   │   ├─ bb
 │   │   │   └─ 8d83f50c30552fbf9a2190dd5c18e2f25908b3
 │   │   ├─ be
 │   │   │   └─ 388d57ace5e69fa5fe499943daba1b1ba79b94
 │   │   ├─ bf
 │   │   │   └─ 468afecac39b7eb66e8719b3fd5c352d0858a9
 │   │   ├─ c0
 │   │   │   └─ 8bf1e64232abca7d8ce5e680d3d0e5e6426f5d
 │   │   ├─ c1
 │   │   │   └─ 390abfe7addec7d6b2506ef7a3b914b8afd993
 │   │   ├─ c3
 │   │   │   └─ 688fbbf1f4d66728bc801ba59433147c5ba559
 │   │   ├─ c4
 │   │   │   ├─ 3cc9b8ba4e4ae5c6df5ed5e3f199668b7fead0
 │   │   │   ├─ b87d2ed91591f8859ebe9b6596562caf897494
 │   │   │   └─ df3effec72c74e998893737dc33c7c308c1446
 │   │   ├─ c5
 │   │   │   ├─ 49f29b6e539a6387d5571ff6a93311cb67811a
 │   │   │   └─ d9b4e2204bd82f9f2f15d9544f9a52c563ba70
 │   │   ├─ c6
 │   │   │   ├─ 8304f0acff01e5588fdb1eba46dbe9c21c06e3
 │   │   │   ├─ 9c81ed944b68f0c2d9c39a4d2f257668560168
 │   │   │   └─ d71f6c602d71c2e657c9ee6545a14c20de4ad3
 │   │   ├─ c7
 │   │   │   └─ cdcb9621959cbb07d98750c3d41acd9df45433
 │   │   ├─ c9
 │   │   │   └─ fcd0b386e5d8c39a3c4d2bbd5aad56cfc7925a
 │   │   ├─ cb
 │   │   │   └─ 9bc96b1bdc1f7d5b53e1ac91c084b1339bdcd9
 │   │   ├─ cd
 │   │   │   ├─ 00bf9b368cba4d6c2a0260210981a55133e50b
 │   │   │   └─ 6329f46bb525b7738a5b625f2190a4c7700b34
 │   │   ├─ ce
 │   │   │   └─ ff1dcdf3ea1732b3bb0948164eeb913969a0e7
 │   │   ├─ d0
 │   │   │   └─ c18ec9d292dc5cf9d9b0f5ad049b7482bf0ed0
 │   │   ├─ d1
 │   │   │   └─ a913f6c9397a1df33391c2278a858d15540a75
 │   │   ├─ d2
 │   │   │   └─ 1fdb809726ab23a25b73d5e3da7b1146ad7101
 │   │   ├─ d3
 │   │   │   └─ b68ce660e7d6bb31c7d04c8d703bdf7f68828d
 │   │   ├─ d4
 │   │   │   ├─ 4b64fb2d7e4fef5e1303a6d01dbf9e2b845fc6
 │   │   │   └─ 5404517d5c5812ecdaf6209edd6cae5644f254
 │   │   ├─ d6
 │   │   │   ├─ 12045f6cbcec86693d114f2f1cd6bc0a960485
 │   │   │   ├─ 7455a537d7757f9e1da49f8f807596aaf20714
 │   │   │   └─ f57f72ee69161808ea83c515bcb044b6ca84f5
 │   │   ├─ d7
 │   │   │   └─ 7f51dba5967c4294e4c3e0fd82487472d01147
 │   │   ├─ d8
 │   │   │   ├─ ca3f7e32e46b2eeb78d5cffa5c92e791f481e6
 │   │   │   └─ d21db0755e41a9f3b5226a9230dbbb2beaa29c
 │   │   ├─ d9
 │   │   │   ├─ 400bc15e4f42604a7b43f60bf9723eb267554f
 │   │   │   ├─ 682ea03c9ee5b26e25ccce0ca1c5c92faedbbc
 │   │   │   └─ c65e1ef17440ba416d664582a1219dbd112e08
 │   │   ├─ da
 │   │   │   └─ 224ba8a100d5294cbe479e16b3529d0c788e79
 │   │   ├─ db
 │   │   │   └─ 14cd991fb599290ec8e907dc8c3abc9ac41065
 │   │   ├─ dc
 │   │   │   └─ 93381b5f294a1f405636c9e63ddca635f44080
 │   │   ├─ de
 │   │   │   └─ 0ffb8b9012d3d7b98ef56355730864b82bf3d9
 │   │   ├─ df
 │   │   │   └─ 2c603b12287f09977df7f1a0498d89b3ece000
 │   │   ├─ e5
 │   │   │   └─ 3df677a0b8c75b2546829d537f2d9b619dbe9b
 │   │   ├─ e6
 │   │   │   └─ a351c93683d279ba5c86d9247d60be83b8bb5c
 │   │   ├─ e7
 │   │   │   └─ 4df67f91765136ee6b6bb49b11a0ab4381f353
 │   │   ├─ e8
 │   │   │   ├─ 040cc3579f65c495d6c70a70bdc4f1bbdd1e55
 │   │   │   ├─ 57be408e2d466893916b015e36926255dfb59c
 │   │   │   ├─ 5a399d9354e8eaebf92625db8c102a3a7f8ed7
 │   │   │   └─ 7c05454e80e42d607cdc9dea01e73c28df1d39
 │   │   ├─ e9
 │   │   │   ├─ ab9f9b1a9117e7f40d3ed9d559215b1df3590b
 │   │   │   └─ b3639cfc34fd2b7321399c3b008d86785be4cc
 │   │   ├─ eb
 │   │   │   ├─ 05bf5ed8cce5f368158f873dc2d18e4ec7f787
 │   │   │   └─ ef31f3467473788fb714419043e6c955cdf6bd
 │   │   ├─ ee
 │   │   │   ├─ 7b09a614e58d0a0a9f0f9ae6d537ae6ccd0fb2
 │   │   │   └─ a9c916518e82d2c3b36850637d8cb2f76f1267
 │   │   ├─ f1
 │   │   │   └─ aafff8d42972e82bbba867b972dcd91c0d81c1
 │   │   ├─ f3
 │   │   │   └─ 2c72fdebb3b2c713857258f0331dfd78f38966
 │   │   ├─ f4
 │   │   │   └─ f2015cb557a3bca356cae6173054a072813c8b
 │   │   ├─ f6
 │   │   │   └─ 0685159989109e36f60b2ccfc2fa737953c3f2
 │   │   ├─ f8
 │   │   │   └─ d916d26551f6539ca7492b89b44cf8dde3ddd6
 │   │   ├─ fa
 │   │   │   ├─ 572b90aaaf818e4b0e30e85fbbf05968d49c0a
 │   │   │   └─ d1ce99f61dbbc5479e3192d528ef3812793b85
 │   │   ├─ fb
 │   │   │   └─ 02affd60c9752f55cfbe0c9b62cf5efca14315
 │   │   ├─ fc
 │   │   │   └─ ccf04c43da2d089f7b6f4e6783b4eef44fc760
 │   │   ├─ fd
 │   │   │   └─ 4f5d4b37d6082b9c4c7209e76e405bc40e6c81
 │   │   ├─ ff
 │   │   │   ├─ 47b3416133a4590866ac643e7b01b6fc885785
 │   │   │   └─ e5299181c31ba90699d933f33a29df238ea82a
 │   │   ├─ info
 │   │   └─ pack
 │   └─ refs
 │       ├─ heads
 │       │   └─ master
 │       ├─ remotes
 │       │   └─ origin
 │       │       └─ master
 │       └─ tags
 ├─ Collections
 │   ├─ Collections.playground
 │   │   ├─ Contents.swift
 │   │   ├─ contents.xcplayground
 │   │   ├─ playground.xcworkspace
 │   │   │   ├─ contents.xcworkspacedata
 │   │   │   ├─ xcshareddata
 │   │   │   │   └─ IDEWorkspaceChecks.plist
 │   │   │   └─ xcuserdata
 │   │   │       └─ park.xcuserdatad
 │   │   │           └─ UserInterfaceState.xcuserstate
 │   │   ├─ Resources
 │   │   │   ├─ flatware-set.JPG
 │   │   │   └─ flatware-set_200x200.JPG
 │   │   └─ Sources
 │   │       └─ SupportCode.swift
 │   └─ Exercises.playground
 │       ├─ Contents.swift
 │       ├─ contents.xcplayground
 │       ├─ playground.xcworkspace
 │       │   └─ contents.xcworkspacedata
 │       ├─ Sources
 │       │   └─ SupportCode.swift
 │       └─ timeline.xctimeline
 ├─ ControlFlow
 │   ├─ .DS_Store
 │   ├─ ControlFlow.playground
 │   │   ├─ Contents.swift
 │   │   ├─ contents.xcplayground
 │   │   ├─ playground.xcworkspace
 │   │   │   ├─ contents.xcworkspacedata
 │   │   │   ├─ xcshareddata
 │   │   │   │   └─ IDEWorkspaceChecks.plist
 │   │   │   └─ xcuserdata
 │   │   │       ├─ admin.xcuserdatad
 │   │   │       │   └─ UserInterfaceState.xcuserstate
 │   │   │       └─ park.xcuserdatad
 │   │   │           └─ UserInterfaceState.xcuserstate
 │   │   ├─ Resources
 │   │   │   ├─ goat.jpg
 │   │   │   └─ monkey.jpg
 │   │   └─ Sources
 │   │       └─ SupportCode.swift
 │   └─ Exercises.playground
 │       ├─ Contents.swift
 │       ├─ contents.xcplayground
 │       ├─ playground.xcworkspace
 │       │   ├─ contents.xcworkspacedata
 │       │   ├─ xcshareddata
 │       │   │   └─ IDEWorkspaceChecks.plist
 │       │   └─ xcuserdata
 │       │       └─ admin.xcuserdatad
 │       │           └─ UserInterfaceState.xcuserstate
 │       └─ Sources
 │           └─ SupportCode.swift
 ├─ Functions
 │   ├─ Exercises.playground
 │   │   ├─ Contents.swift
 │   │   ├─ contents.xcplayground
 │   │   ├─ playground.xcworkspace
 │   │   │   ├─ contents.xcworkspacedata
 │   │   │   ├─ xcshareddata
 │   │   │   │   └─ IDEWorkspaceChecks.plist
 │   │   │   └─ xcuserdata
 │   │   │       └─ admin.xcuserdatad
 │   │   │           └─ UserInterfaceState.xcuserstate
 │   │   └─ Sources
 │   │       └─ SupportCode.swift
 │   └─ Functions.playground
 │       ├─ Contents.swift
 │       ├─ contents.xcplayground
 │       ├─ playground.xcworkspace
 │       │   ├─ contents.xcworkspacedata
 │       │   ├─ xcshareddata
 │       │   │   └─ IDEWorkspaceChecks.plist
 │       │   └─ xcuserdata
 │       │       ├─ admin.xcuserdatad
 │       │       │   └─ UserInterfaceState.xcuserstate
 │       │       └─ park.xcuserdatad
 │       │           └─ UserInterfaceState.xcuserstate
 │       ├─ Resources
 │       │   └─ nestedDolls.jpg
 │       └─ Sources
 │           └─ SupportCode.swift
 ├─ Optionals
 │   ├─ Exercises.playground
 │   │   ├─ Contents.swift
 │   │   ├─ contents.xcplayground
 │   │   ├─ playground.xcworkspace
 │   │   │   ├─ contents.xcworkspacedata
 │   │   │   ├─ xcshareddata
 │   │   │   │   └─ IDEWorkspaceChecks.plist
 │   │   │   └─ xcuserdata
 │   │   │       └─ admin.xcuserdatad
 │   │   │           └─ UserInterfaceState.xcuserstate
 │   │   └─ Sources
 │   │       └─ SupportCode.swift
 │   └─ Optionals.playground
 │       ├─ Contents.swift
 │       ├─ contents.xcplayground
 │       ├─ playground.xcworkspace
 │       │   ├─ contents.xcworkspacedata
 │       │   ├─ xcshareddata
 │       │   │   └─ IDEWorkspaceChecks.plist
 │       │   └─ xcuserdata
 │       │       ├─ admin.xcuserdatad
 │       │       │   └─ UserInterfaceState.xcuserstate
 │       │       └─ park.xcuserdatad
 │       │           └─ UserInterfaceState.xcuserstate
 │       ├─ Resources
 │       │   ├─ puppy_in_box.jpg
 │       │   ├─ puppy_in_box.png
 │       │   └─ yorkshire-terrier-puppy_small.png
 │       └─ Sources
 │           └─ SupportCode.swift
 ├─ README.md
 └─ SwitftThing
     ├─ .DS_Store
     ├─ MiniProect
     │   └─ main.swift
     ├─ SwitftThing
     │   ├─ Evaluate.swift
     │   ├─ main.swift
     │   ├─ MiniProject.swift
     │   ├─ Search.swift
     │   └─ string.swift
     └─ SwitftThing.xcodeproj
         ├─ project.pbxproj
         ├─ project.xcworkspace
         │   ├─ contents.xcworkspacedata
         │   ├─ xcshareddata
         │   │   └─ IDEWorkspaceChecks.plist
         │   └─ xcuserdata
         │       └─ admin.xcuserdatad
         │           └─ UserInterfaceState.xcuserstate
         └─ xcuserdata
             └─ admin.xcuserdatad
                 ├─ xcdebugger
                 │   └─ Breakpoints_v2.xcbkptlist
                 └─ xcschemes
                     └─ xcschememanagement.plist
Number of Files: 313
Number of Directory: 234
Program ended with exit code: 0
