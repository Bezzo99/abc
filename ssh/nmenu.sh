#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY[nq� ��xP ������������  F @   `N}i�k����ƤIM���M5OQ��4�mF�����F���5=!�i�='�4 E!�������         �h4��� �Ѧ@@� �j~�j~��I�=4���Q�=O(�C��ڛS�h  �h4��� �Ѧ@@� �B454ѩ�M�h�f�jѨ�4��P�M����@y�b&d&It��5���$O3僣�Q�z��׵��_2��Û��;� �ha��0P'f���v3���P�&�1C@҆�8&���I�@y$U�'�E,�J:n�/4{>P�+\A�fE.a��	�vQ�l�I�LX�g�����OdW��(�~C&����3�r���]v�2a����di�Г���P�y8��w;/w,ӆ[,-s1~ƊP>�WP�5�wv�
���;u�������	��:�B��յdz!fp�9�DR�QAK��D�ϩc����⚵��8�{c.f!�G�J�ނWu�Te�T�0�C�I-�m��W!�ɘp�����JA oB��;����`�)��'�ϒ&�K ,�ti���DGf�����}����[Wh�!M��p�h�Z$�E�;�<��#�pI�p�"&:�L ��K p��X�b�0��� ���xЩ}kY�4�� b
��R�b!:֕�)JL���3Tr���Π����.R��2mnE�������(68R�|���L�f���ϟ�8�Upe]A��[��{g�U��yf����&a�-(-5��#)�[�E&�+O>1���V|OR2��f�-,)Do��l�9�����d��*�S��J�a���W�����Bo�7��Nݨ�*��)�.��K���fd�݂�!.�W@�d��#�d(�ˆqq�V'�F�"�b�
��0b��n"�������c�r�']�7-��a���Z(������?q�i�5��H&���n����TZ�� -G�hL�<{`u�Z�q��*G�0~���/���ӓ@�U��/+��Ζg��,��?����U{ݡI�V����A�QFPFY0�Do"�&B~ Iq�T��$[zۜsHJWY�L����]�F�׭�R2ײC�XJa@��q5
C�~� �}�������.Bι��C��l��NƉT&=)h���jv5��8$��a��[s �mG����	X=��Tt�ud/��j����癝�6]t7Y�Z%5�n�7�+�'�2\(/�H�.|�n
њ(7x�Vp�������09����n��P)���ek��N�û22h�b6��t�2'�Ԓ�"DY�����d�ѣ\�Ĉr��`	�;Piw�?z�}�0Q��T/?������x�(��X�Ҁ����iA2�bb܍-��l�@����$ �a��7�D�+l�t��஼<y(�[�����j�9�����,�c=�*���`	�U�&�:"�1͑���'�6e�wz�cy�{8M����@ʰ��ghh�#���0� �����d�mcC������̌�H�#b���a��I�P1� ����G����x�J?ڡ����.�p� ���