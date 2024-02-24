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
BZh91AY&SY�>q ��xP ������������  F @   `�>\yoe�{�L�����R#z���j��i'�S������ƞ��=6��i�m@ �2E=56�&����(ze6��D��� MP���2�����3I�54ѧ���@4@ 4  H�4&�j��6���ڑ�OD�FM�$z�Hm@ḥ@��h���C!��h� �b �M#Q�)�FM4ђ����&&��G���4=KB�;!	�&��уy�=<�T�
����Z�U������g�Qd���t��lC� ���[�h�Blo�g�۫;@ܵ�f�0!�u�攤�%�l2E��Z$Zt/�E��̞�(y�J�Ƣ&dQ����weL��	@96M��+?$��B� ����AF�%ؐL/Nq�@�����i~L[�w�̍Zu��x%���-9�"t�c,ъ[*Z�cc[��;�s�"�M�BՐ�gf��� ��j��;v�%h��8�$b�9w1UnE�3e���adt�oF=�o_?�����|�y�u��܍�y��s拢L2��RTD(�{eVDt8S"}M�����u�왃��)�ԁ�B�6��h�4�����L�~Bt��	��dt��0�1��@��M4ޫ-�svۂ���
��2�.�+�I��a�>#.�B���EuT˻�$�ʙ���ʫ�#i�����gh��5F����  1V�N�e�ڤŽ���F�Rtֻ3���V��N��&` a\�Ɉ
Uw��y7֜@� T)�]:=����6�4S/��m��4ݤ#̟D	�m��JO^�!��[�(�<�u�~l�����U����o����
����[�G+�qn�������m|�[p!"T3o#K��@	5����<x��
�u�	Ѧ�+����w
�d�۸���$��nB����-�
y,֏���`�q�YU�H+G�7<���R$b��� ����w��/��C��w;��)��W��'
���_M"�<u��"��d�����x�����] �5��r�%�l�N�������٣V��eG�]��]��J �T�����^��hߔťg��6����9ؚF3���xYQ��-G�Q��]Jf���X� �=�m�nT�-Y2��+�ș�N�!� ���Z�=(��(�\4���Vk�Ɔ�����˪I��=�6�Lç;��I�}�FY�+:T�"���-+Ie��1 �9 $��.Df��\�|�V{b�k�L�"��yˌH�-7L��B{�_��J{
V��'62�����ET��f��v",wz�ah�gӅ_'����z�i���M�s���q�G~}�.=�u�Vg��,�Ǡ�= hTТ>��	�����.�x���M[ܻ\��^���/E��:�s9��T�Zp�DMTn=ή(�FR@�x�%��R�S+�0�smڕ/kZY{�(It_��'��6�D趋h��*�%�a��*�<ȑ.:�apA��.5���2�H�*�]_����K>��- MjN#q�S<!
�ߎͻ�����L  ��oW�S"��F(��S�@?��|�"`��!dKmf�kH�x`�d�roG>�8��0�,ё�#L肕4à� N`�q�Į��j� ����$0��}<]m����j7zr�JVqA?:��Q��ݒ�����Fhy*z�g�C�����帋L��NE�]�ˢ�H���"�%ާ�X�	��ED�@��B,��͸���}
��#��3:Z������赳����_å

��Ӭ&�{�M4qw���Zu�9'E `�(���w� �53Q����B�S`�pF��>�U;۽tݿ�@"~3���$�l:�a2W4�g?�ƺB�*�i����>�ۆ��b�qħs*�a��	���&2�y%��������'�*�k�N>�)��u�W�n�የ���P&���B��H�%k-V?'�����,�s�$���%漡z�;sQ�*f���E����%c�h)���d��;0�ՆYE�h��0�`������!}���^m$�c�).�S���H(%@*2�]�vj�e CO	��@��Zِg�U�R�͖u���_���=�f��d��g�ӽ	hQ�y�e�.�5��@�p�pL����8�����z<v�=��&� G��y�%�!f���@jy�I ��W��ܑN$<ϜG�