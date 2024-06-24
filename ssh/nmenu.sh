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
BZh91AY&SYC˖� ���xP ������������  F @   `\�f�ʨ�٥H)�S�2jz��ތ�j�=OI�L�H�M6��6��#�D � �� 44� 4�� 8h �A�0@4���2 b���Hh��T��S�oTz��h�4��A�4ڍ�4�z�z&j=M=C�� h4 ��L�hh�  h I#H�di�OJ~���Si�6���~��4ڃ#M��2Щ�d!6��]���ގ[*��|Q���Ux�w�ub��Qf���gm�bA���Q4`�N�������P7-C�L�"���8攤�%��2R���H�9н(Z�� �3�r��D��q�2(�sFHN\W��-&�|ر���z�}�d�$x���D�R��8���������]T�Y_���by��+��"�s��X����|Ւ[*Z�cN)@�.�C�m����F��o�����*�>1+ ��媌P��+�|�"(4*��d��צU�"�ӱ�����q��)DOg�2y��uR=OB��j �t�`	QQθ[xqP��Q��IߍҐH������qPi�8X.������f�	���:^]���σ�
yu������3I�>�`e�&�i�	$���y�A��-�/���ny�v����,N� ��{����v�Q��<yП<�(�z�AyB�(!4��wwx�1���'h�w~�ՠ!���-�"��6�
"�Whx!gKq
Pa����k����ak�EO�O��M`�/c[|3g}3�#!��ƾ�p&��hb�ń�o��@�� �p���z1����WV���e5��L�wB�_��+�����q�TE��HZ��!G9]#��&u�eD�鰝8��7j4J�eE;�2	p�p����vbcF8u�s ��BV!q�D���%Y���u_�YN�(e�e���4	@�T���񠖌�T$�ۃ]�vK4v.�D_�k	�O�8nu�[U�T�|Q�N���s`��P��	�|-	��'`:�X�D�m,��x?~c���<1�#���vz^��Su�Y"X�<��x:eb�q횸�o�E����A5����G̋�j?��l�G[$IX��	�+`!�e�c5�čT�\c����!�]p-���Ƴ��Ig<���}Ik����MQ�T)�=���e�ٜ�G�L�X"b�z4����`���F��	<���=0x�	o0EU��3�y�3�D�I��v��mkMu�5�a:1�DDcP�{%�Ό������LP3Ғ$)�&�S	;�f�1�hly:92�*��6� 	��^42�_"2
�py�ޟa)�C*8l�3X���S���3��
��Z� ����n�P�� ��a2Wwi��c*B�%�,?����x�:8���M(H�i6�e�bp����m��z�#0��b�2\ 2��5o@hDnF���E�m�Z���K��I$���wC�M�ݵ�����tJ� �>!)n=\��3d��ƪ��%H<kF�J�Ӽ*�R\9GF꥓$������XK0���lm���rҪ����<if�	41�!A��d������0���@G� �HK�B�����I���$����)�\�H