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
BZh91AY&SY)l�� �������������������������������������5��O�b2�v��|��k�]��ջ̯<��}�M=���/w��WϽe��u�.�R��;��M{���P�y�!=��2m	��<�����jd�ɒf5S�=)�O�O�y'��e=4O&	��F�����SƄ�=�S4�Lh	���i�beB��i��mm ��O@j20SO$�f�dɉ��G����G�i���Ʉbm&hԞA��	��#SO&�=0�F�i�{�PMSL���)�OiD�T��M=4ƙ& 56���i����S��4�����`�'��yOS�=0��x�a2)��mOS�zi3LSM����)�6���OF����6MS�z�h�'���<SM�=C��	����z�S�=OSh5=��M���z#i����zM6�M�dmC@�j4��z&�d�4  !4M0Q�&54�1���L������4��4�h�=  i� h��d�Ѡ�F�����4 �F��#
xL�jzh�OML�=4�h'��{Jy���f�l(���I�OD��0���?T��cQ�bOS4��&ɣA��h��F�O"?H�)�Usu/�\}����ֳU� z �=�R�S a�u�j1q���hK٫U)bΦ�\���2�k��g8��tuש0.Tr� �(i$p�F�I�k�(�`�1�Z��2E��)L���Z��s�4���.9��Π\&��(R���W�a��K
�o��I�����L:�$3i.3$��'�aT�Iʂ���UN����͸�8+%6kP��$���MR�x[
Z'J����M2��.�-��n�+�Y=��q���>�[�]F�_����c%�b��,vq�e��p�!`p�������Dt	'i����p�H�_}���"3
j8�D�Ā�n�W
�c���m������n)d�E*�pJv^m�?R Dh*g�����**#��'��#Ȝ��P%[�au���3s� ��Z�C�0;�*�|'��⩣�#kӛ�Z������D�΂���������X�fv �1B���#��<jN�G�`�U�X�F�D��&�H�% �Pm�&mDnD��&�]zE�X�z=~ގ<=ւ�TB�@���ֱ�}}3�֡	��^��)�W9
(��5���F�5��eE�I�Ԃ@�4� �:�! ��$�UMa%�C8,ΊK�I�����$QO �@�$HFx��d9��$��$� l����9<C��x:���ŧ�xu;
�"�"��&[,�� �d�ǜR�c�k��(A=4`�ffBm����yBs4���{�49ɸNpi��$�ӝ�@�
�tZ;$I9V$��@�Th�.��������f ���9�"~M�Q$ �V�$BD3ȒE��^# �^�^Q����
��@�T��4�7ͧ��쬱��(Z��o�k�`��A���B�!T��]˺�S�n��U���!�n�(R � �ִ��S'���B�>+O3��\>>I�0yGϽ�2�,, ���On�:Cq�2d
� fGw�#�@莧`�g� �ȑd� ��Q�` �F�H�������&��Q^!�*L
F��|��T��z��
�3"K�.������c�B�}_<�M�?IAb�a�����벷�ml(�9�ax�fn���뉉UǞ�v����B"#���Yr�k�7EZ����E��ߵ��y�:��b	�"H;m�": � }�:g���Q]��h	!�`h�#��<v���	^��.t�)��W��Ά"@�Q�%�;�����{� N�*��@T�_��HD���(�ա�DM yk�[�A�_j<�O����A`�1�4b6��Cl�f7����M��b4����|>E��j�0�@t�Ğ<�?�Gq�L�겪�7ĩ���.ō�u۴�{6or��3�J��ZP�M�ƨY���ɐbq%ZU@\̷�D�E
Z�f��mQ��[�h�c4�����{[i�9qR�3 ��6~@���!@���te4�@f��q[�X�=�]��y¸0f�Qf��I"�9��6K$g��
-��p�
CF\���$n�4_3h~<����|ڐP��+��uwo�b/1�>�Ǒ�H�d,�W-�%��%F��˙��Ar0	EA�iSb��;�m�i�ܧZ$LbT�ϿB�L����Y�/..=���Y�Vdd��!"Z.z��בe7/���oN���pD��i�P�_?a�2��:�@�hsVU�#���w>/��l��'qW1
h\/�� �س��%���eki��]'2�3��~fo�����h��,uÜ�e�V2`�uNI��ᄽ�c�DMʨDs�{[d�2ҡ�K��F5��� �۶1
������^v�rC�>�RRET��i�<����UA��@/&"׺5bg��x�{�Bp"2���W��wi(�9��h �?Y��L�8[���O<R�� ����L��d�����/R^,��Y����6D� ����>sR�Jo�B��)`�n�b@�Q���������(�I���������I �C:�8a�PRRC,}��+��7���,@�:����J*K�V�;(Z֝���*R:�9q�֥O�佩]�������>�n�:�Ҵ������n7;ZE�r�Ic�9��(-�hQ��!S�c``�c�H&+cD$]�
1�R)d�?�q��ؙ,y�bs��J�Md�E]�uy�p�)~9��b�k�L�	 �s����0S����;�����'y&�2����^ms��Q�H泒" �=�����"�z;��_ ��o�]�+��p}ǗG  �|v� C�+����%�!����T�`c7o�=��4�g�t�;-���.v:����!w��8�
�k}�g���R��䧧V6re�9*��{~�����6��_���"�sH`Т U!i������9kB�?,���}�6�E��:t��[�~�w����~�L�z�G�޴�c�(~wn�x������hôw}#���뇆¡Yb �-��+gyF]Dk��C��ɒM��B�-���e�S�%?�6B�0y�^K۹l����)Ջf$�-R�E���@^Q�pJI<�6f���n�gJ���A�Ց#�Z���^���j�kvnf�Ԥ���z&Oʡ�����{|5e8�,���<���[����`1[ߙ�M[

�8og��Z�s��bmj�"�%]�>�j��{�:"��,����w�����Ȯ�L5�pZ�`0(�����Sxa�D�Id&=r0�r/R���'���<���z��D�WIb��3���)�H���
1\2i/���r/V���l9Y�{�5�g�2��9��Z�q?��|1]�)X	���P�����(�v��U6�r)�� >�x�W�5������~��[�>u6BU��I��*��ؽyG���SG�&��tྐ�DQf�.x��U�����ʍ
�c�{��7�R@�hK*=���ӊꭜ��c)�=\�z�Ϭ�����\�Wn>o���j�������=i.�f��R7�o?fz�F���;�yN�
�$JPuȭ����|%=�M�W+��9KQ_��4vO����3���Ge�`���'�^�Pry���=���Ťn�$�.��a�;y5��xz�z��ԊSrE���~���Q��/���i����Yۀr��T�5�\ַ��W������z˰�k+���'�g$�6��Y#���#�1�р
*R���m��_Yy&j�����;�=�%*���9��)*_�LI�+�B�M*�&D9nn�n"��uW�5��s.��������t��h�m�a�-��x�EI��"6o�H�܇����3��:H�:�X�S\9��ʿ��1�h�/�=�/.EMn�#���^Z�fּ�H��� /�y���`3��_�o��3��s�ƈ[*z���9.E�'�S�iK�  M�-�ϵ��6�N+_��r��Q5uWP�  �Ǫ��sZG/�Rn�U�{^�;&2����>�\���	��6�V<Apo D�t��l�|p����s��!�#��.ž�G6���R��2�e��-m���I�+ј�� �X[�ξ.j@�t��[j��~����]<wD���6N5��5�`�;�iPaH�J6�֝	4gMН��W��RA[�4[)�\�&gꕛC��c7�ƾ��:����ꨎ�N$O�(��e���m6�9�ݢ58f�o_CF
v�f� O23z }�.�N�pnj���_̀J*�KTֲ@1;f���H&��!	{�k}&FsY)	��ڇ�d@����P@�c[���R֦ ��#�~hg&���)�������cｶœe]Vj͟7^���Mm���O2������R�ZC+g�Ŭ��x��?,`���`H������ �Ԫ"��	��:)~�9�':�W\n;m��������@��y�rP��h*3�?rҮ3��7�66����:�.e�0�3|'��⇭hƙ��~��7�ȅ�#� ����0��vX��K��ݦ_���&�@s�W����wb���rĳ�P��.��:��4�x�ȭN�%�<K vI���t�.���Ӹ5������P�׍�!��o4t� ��\���i��G$@��@ԛ$Me>��L��E
�K8\Zha����U��J��VV��g�d�eP�\G��������3�3�hv�`%|�oZ�7�e�+񭱟}Ob�J�O�ʡ�a�=
�7$';�	8��<�ً��/�p�U/F�]�.��ޗ:Iw��ĵCbG�G��"3` �E�P6@�q��������@�lN����"�՛qjh����']�Æ^�13���i��"�켆�.�GX��Tp_��@�c�Z��z��J�!�1�Ϫ1�8�	na�W,F �=j���|�+*��_�O�ۏ/NM.��R挣`�b[���^h�ݬ�`�/�����'�/��B"�՞6�VM0H��Żd�"܊9f��;�i��	<N,�V�� �%8Jh"���dH&�Ug�wAL���Is�(�������ɡ�޲�H1p,0�+Ў��c�q��h=�1�J��,���5W�aJh�VT��׃�#d�6����F5��Ռe���z�)�h�4#1q��@L�f�;����jyS64h��LSM��(���09XK�����TD��Kb��,��:���Ù3���v�������Ƴ���E��l����az����&#��������N����6�Է8��=h>\����P�W����Sa?w\��q
ܐ6p��8���Fw��6�]Ƞ�7�n��n��w���~�Cw��
�f� �ߟ@`0�`���sͮg�����hD��[c��1	MX�˹��T�?鼖|�6��(� D j8�6ĬHIa��,���o���"M���u�sWk�����|%�3�a�r+���6=���V!�wp���[ۅk�� �6�w����|�nP��7����1}9��4*�Nki��φǭc��L�Yگ78�:\7Z��n����/�aÂk��9΄�@�5b���d�5�"Vw܏U����9�#q.H������4$���4LPvq���Z������6�p�zO�dM��߂_W�������a�GO�Ƚj�"=]�/�p��X�&qT{�z�nx���9��i��v�g�B*��������o&] ?��2���[mj�<����)�ln!k�E9��_4� &q|-�ߊ�"N>ht<����-�d��T��iZ�X*,gL �4�n7�j�{�^��#?�mH�F��G����P����P#D�
W���
k�ap9DW+�t�hq�����cu��1=�z���9�+����x��6g����|#ge��ugo����gƌ�֥/I�{y��u�=�0����!Z���\�몼e8�_3V0���e�;�Lp5�xH�[�@T��{�;�,W;��w��̀?Fw�K|��;\w��r�XP��)0R�:		0cB�(_� 8� jF����|�S3�Z���S�ל����gXC����@��p2�<UbGdE�E�Y�����n-17��P2 P�N�Z�0Y��K^��¾�	�b�0�O����a�P�� �-gW!�~�b�,H����y���u7Cn�;	o}с�(�C�1��Pm��\����	񧹵�|$=R2ߵ����K�	 �m��Ѿ��f-�B��g��_�]f����0}IK4��  B9H�����'��� tچ�f3v��e�_Vo��d�'q�Oկ���N.[�(;;:����ǽE�p ow6�3�.�v���!�	�6�oV�	�J;/�P �������l�,��l�ǀA ��W�j:�`}"�P�krfѼDlyiO�������u36��9B\R1��w�#r�Gi�Un�ny����w�اS>�z��ϡ��D��,p3��JCwɯI�X����n��s~;Z��ճ�c��4����1��)"�t�fk=���n�� I���Gc�;���4p�w攆�Y�O��8��}?���-�t�?��v�`�)�)����;��<h�*��e���#3������=e-�jC~�[��Y"�v�9Ȧ~�W�&���J��}3���'�%��2Z�y��pb�]`�Qn� f����AN@(��r�f���t�02�=��3�I�]<&׏���Go��A{$��/\�~Ċ]�����.}���%[�݅������rn�2K�q:m(S����4�\�B�W� �Yt�����4�V��_q�!��Z3��`F��]�뾟�7՟��49<��u͹N�<m4�&�b�c7��!Z-�zz=`���ᓓ��l;�������+��M�G<��\?�W\��L^₻��	�֊����L�<--�M�&��#��;��*��\YI��V+3����8pѲ'WF���G������`p��*\ ��=9X��-���>�f���bK�����4��dv�$�x���>�:V���oM�o�W��W
�y��6�]��r�"kz &8@���1���C��(�N�w/�ͺ��O�������У��C�z}|���]I���d����Qㆴ�pr-vܫ��+e�a�j��q������ޛh<�Wǽ
{{ˏI<+��z�媏�M�< �g!�(�
K2�wN�V�����i�n�����GY���q�w����h-U�$�<&d��������kh�>hp\���]:��νc��~��g�h�dr?j� �#2�
7��A�Ǉ��� AC��מD����ģ���o�\ʷ�5�F��Xd}KZ�d�,��*�2>6� ��W壨��9��R�����:�.K�kH�)�G���4G���E�J���Y�_s~y�p���蚨�e� �b���K�b4�Z[�Z�l]v}ۻ(�!��ﵱ����4���j�eb+2;�;4�|<�����F�  �H�Ul!�,���9dж�z����WRU̻�p(s8CLz�P��T`�\ۻW�.�r����u���35���#i�nPZo1);�l�9��j~XD>O6M��W#��e�4w}v����Kf�;����8L���~������F5To��w7Mo����l5���R�\�����q��Ym��@�!� g�t]DM�?Y����P�/�#}Eq'	
��IIs
�O�x:,l3�k_�N��E���eEM짣��?��\� <��Ž�6c�/��eh��^�%t����u�~]J�!���)��Um���d�<�L�o���k<v)�&�I�h���m�ʓ�%�I�u��ȁB�#��!�Y�x!au+B=T=5�o+��"P�����_y�-��'Sm�9L+��W^$7��uwo�y2t|�=���pփ�n,n&�eA���>��`9?��>N��i1ց�1JbR]���q,&��+zn�V@����o�̻�-�D�`�Fs�����G�\1�gT����� �Q~w"��fN8=cKx����3�4[�_�S).<R3T�f&�o�Yr�uS!������/R>��.������m�E�4�_!{��FK��uFQڂ�c��r��jŦ0X�5����C'ٙ���sa���x�S��^w̸(ԯ^�����TF�t@�2�T2���d�@9 ��{�B�ټXlX	p�:V�a]��2�lz��M��_�c�{��
�h1)��h�?�&ņJ�u�= "�3�>���<+_l��}��Əm��G��kV�� FE�;���8ww���:��6�\X��P�9}ɒ%�V��܌�Wp��]7��eVɥe3dN�[f�������F�/�o�ը.���j�|��:�6�t����O�4��x1��� �P��U��k-�jf1g=��Q��țg�t ��*�u}}�q2,�-�^o�蒖��Y;-f
��Ɓ��D�;ζ���q6}x	�  ��t9=l?
��]� :�!BD@�?�����L�#e�r|�&7��Z|*����/�%��Ӛ�V�e�]7B�_�#�4�|�}�*�Jg��Dv�fTH�v��-�Fu�)�v�=��.T�"�[G�¼�&ɰ-,Y�W5BH�*_ Ϊ����f��b���
�7�9U�&5 �T$���G��� �_�6'b��.�$����솲 >MNN%��W�/�/�zd��C Ug�ݠ����8K.��k:y�~��o�ޟ7vz�d@��H��#!�v�|�h����w�����WmcH"�l���G��dJ��T�q4���e~j�zz}J�[/n��|�̕��Sభ���7l�*�5�P>�tAC�<�h�ш aXGPQ�1*z�ʪ�����;��^�c�G!�{��]]�_�9/��y�QzwUڀk�"�;� U�0�sSo����$�h�*����ĸ��\�����"p(�1���X8����t�j�Ʒ�~��D�y48���B%h�;�ea�PdC@�E�޺�>��~1Ē)�a�aLF2 0�|�{֐5$Ph5Bhf��E��l׆�SdT�r�4����u�:�FN�8p�Ç* �i\��\֋S�Y����)�Kd�