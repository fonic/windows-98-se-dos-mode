�SHSUCDX by Jason Hood <jadoxa@yahoo.com.au>. | Derived from v1.4b by
Version 3.02 (5 May, 2005). Freeware.        | John H. McCoy, October 2000,
http://shsucdx.adoxa.cjb.net/                | Sam Houston State University.
 �>�� �  )�󪿐 �Z f�Stak�f��  ��L�!� ��                                                                               �          �                        	 �������� ��4@FWy�MXfP��!�.@��U��~��u�F����u���.���9 ��]π�t
��t�    <#t�< t���:{Hy�I U��n�.&�&(�*��&��`fP�B ��FfXa�&&�.(�f�u� �;x���:��VWQ��� y���� �Y_^��F��u<w1� ��h����X���8�_wu��W��$��n ��V �X�Nð��������������^&�,A�&�E$?�c <r�Xt�P�FUVW�f��f��P� 1�1���/�&_^]�N<u��뿑�! u��^�á����A�8Gt��9���^��SVW�����u<�= +G=� rS�T�O[�Ndt�G���u�O��L�u� �	 �G0�_^[�j �lÍw� �|�-�}9�u��f�}CD00tf�}	CDROuuI��� �}0���� �}(�O�M*�E(x����GVW���{^W�_^�F-sB�t<�9 f1���u&��d�u�|�%/u��D�<@t<Ct<Et	�@��d�u��f�D
f�Ef�Df�Ef�E����=u�h��~�&�y&�1���p�1ɇN���&f�E&f+Ev�f�  ��u9�v���&f�E��f�����&fE�^&�fW��r��uf�������6uf����%f_�����u�� )�9�r��Q�~�u���Y1�f@f_Mu�N�)�u�1�É�����^��F� �G�1�� @����wr����"�� ������D������C&�G�u�	�|��^��
&���e��^�3r6�D�P��F�� ���)&����@�
�����
�����1���������*���~
�����Q�=���v&�f;G)u����f�X��&8D�t	���G �Íw� ���
 � ��Ë~&�=����~
&����&�}�tQW�u�=�j_�^�G�P	&�E�W	&�E�I	$��&f�EW&�}�^��� ��_�}���f���t�� �&�E����WV�H�^���
��f�GGf�D
f�_��N�&�E���^��^����F�  �F�  �N�×������D�����5����^��u>�ߋ^�$�w�%����u	<t� ��,��Ƭ< t���0����$�f�������&��v�|u&�G<~�������	VWfX��u�1�Y��F��������Y��F�×��������8���<u8f-t�f-����������9����D����rw;W� _�� ����r���&�?\�&�����u��~���^�G,�YÀ�s�1���v��	,�Y�t	;F����	�s
9F�tH�5
�5
Y�P�<����[�&�u&�_&�<	u��t�^��G���&�|!&�L �HS�F-s&�=0s��r^��#5
�͸�q�!���� ^Á�  r�P�D�J ��$ 8�Xu�`��� N�<?t:D��aÊD,Ps� ��
D��
Df���D���L������È�%��u���Íw�����<\u��F&���u�9�u	���uO��� &�E�\���1�1һ=�  SQ��C��Y[&�<v^�.)
<.uGI��X �Ur�k r
t�)
��A��It��: ��5�M t0�1�%  t(1�K�6�AR��u�K�� t��~XC0���ð.u�ĉ�S� t<ar<zw$߈C�����[�&�G<.�t
<;t< u1���	 ��t�D�W��&�= t$��GC&�<\t< u��)�tS1һ=��� _s�_�&�M���W�Dt[�^�_� �f9EuVW�=� �_^t1�}9�u�fPS�7 [fXu,�f�E�_�� �}��H�f�DfD���X ��_�1���������2 ��1��^���_�u u�����t�B�8,u�����@f@Oy�Ë^�f�DfHf���f�DË]�u�\�w� �\�|�]�G��EËv���PV�v�D&�G�\�\^X�f1��SW�~�f;Et�]� tf���f�E_[ù SW�߻n��Gf�G�O��� _[�
Provides access to CD-ROM drives.

SHSUCDX [/D:[?|*]DriverName[,[Drive][,[Unit][,[MaxDrives]]]] [/L:Drive]]
        [/D:Drives] [/C] [/V] [/~[+|-]] [/R[+|-]] [/U] [/Q[+|Q]]
        [/L:Number] [/E][/K][/S][/M]

   DriverName  Name of the CD-ROM device driver.
                  '?' will silently ignore an invalid name.
                  '*' will ignore and, at install, reserve a drive.
   Drive       First drive letter to assign to drives attached to this driver.
   Unit        First drive unit on this driver to be assigned a drive letter.
   MaxDrives   Maximum number of units on this driver to assign drive letters.

   /D:Drives   Install: Reserve space for additional drives.
               Resident: Remove drives last assigned.
   /C          Don't relocate to high (or low) memory.
   /V          Install: Display memory usage.
               Resident/with help: Display information.
   /~          Toggle or turn on/off tilde generation (default is off).
   /R          Toggle or turn on/off read-only attribute (default is on).
   /U          Unload.
   /Q          Quiet - don't display sign-on banner.
   /Q+         Extra quiet - only display assigned/removed drives.
   /QQ         Really quiet - don't display anything.
   /L:Number   Return assigned drive number:
                  0 = number of drives (255 = not installed)
                  1 = first drive (1 = A:, 255 = not assigned)
                  2 = second drive, etc.
   /E/K/S/M    Ignored (for MSCDEX commandline compatibility).
 
Compile-time options: 386, CD root form not used, High Sierra supported,
                      Joliet supported, image on CD supported.
 
Run-time options: tilde generation is o??
                  read-only attribute is o??
 
SHSUCDX installed.
   Drives Assigned
   Drives Removed
 Drive  Driver   Unit
   ?:   ????????  ??
 0 drive(s) available.
 
Memory Usage  (loaded high)
   Static:  00000 bytes
  Dynamic: 00000 bytes
  Total:   00000 bytes
 
SHSUCDX uninstalled and memory freed.
 
SHSUCDX can't uninstall.
 
Must have at least a 386.
 
Must be DOS 3.3 or later.
 
Different version of SHSUCDX is installed.
 
SHSUCDX or MSCDEX is already installed.
 
Can't open CD driver  
Need more drive letters. 
Units specified don't exist. 
No drives assigned. 
Not enough memory.   SHSUCDX can't install.
 Unknown option: '?'.
 /D: driver name required.
 /D: invalid drive letter.
 /D: expecting unit number (0-99).
 /D: expecting maximum units (1-9).
 /L: expecting value.
 /L: must follow /D.
 /L: invalid drive letter.
 /L: only two digits allowed.
 |?�C�D3E3K�L3M�Q�R3S�U�V�~4��r�����!���u�þ�H s)����F �n &�>5
 u�ff���n &�>�	�u�ff�þ;���.�Y���'�:��� �w�����������[ s��� P��X�L�!�TX9�u��X pP��X� pt���\ v����� 0��F ����ڻ��P� �/Z����t��t����H �F �<�u	����u��V�|^�W �s�����H r8t	�>C  �s��R�!�.�2�6&f�Gf�J &�G!H�P �0�!<w�������Q���`�`���X�,�����m�N �64�,�0�8�V �F�H s9�F �<�q�&< �>C  u�X ���� �Y���&�<������-�Y �Y r��:������=�� =�!s�|*�Du'�H r!�<��� �Q �D�!��>�!�r��R �S���C y��D ��<�� �H r5�Ȱ9����j�@��j�������� ��Z r����������H s�F &�<(Ȣ<�������H s�B��@�j����[ s�\�w��Fq�!=f�u��&��Ш�u�S��H sM�/5�!��;F u@���u:&������F&��/%�!������&�>  � t�����I�!��� �h�����`��$���%V�����^����M�������������:��P���O�H s���"��x�q&�G��&�G���t
&�G(�v��L�8�v���T	:s��>D 
s� u��1 B���D ��9��àN ���J ��&�GD�tBN :P v�ÉU�E��  �E�  �E�E  �E
�E  ������X rd�X�!P� X�!P� �X�!�>F  �� s���X�!��H�!�r P��	�F XH��@&� ��I�پ �����Z[�X�![�X�!��s �����I��&9 �����.F �I Ë����=�E�@&�GHP�&N �J �X&�GC��&�OI�&�OK�&�GO A&�&�G: ��9��ÎF �9&�&�����ǹ ��*��*&��&�<��u��&��8�v���"&(�& <(Ȳ9�⿲�Q�
 Y�3���2 ��u&�.�&N .�J ÁC��u�gC �gI �gK �g ��9������ �l�Z r���F���]��H s���^�-u�+��_&�GA�_V&�7��
�d����^��&�G<
r�
00�ģnV�4�^��9����Z r�&� ������Z r&�<��t�s ��þ�����>F  ���r�������������" �"�I s��@��)�� ���� ����ù 1��6� NI��u�� N���<ar<zw$�ÿ� �]��9�4 rW�j��r"u��U�r_��>C  u�H s
�[ s�W þj������G��t7< v�</t<-u�G��t$���{�=:uG��1Ɋ%8�t�� t
��/tGA�����W ��V ��X ��[ ��Y ��<+u�Z �
$�<Qu��û5
� u���7�û�	� u�|�Ј�7��@�
�<+t<-u��F À<1r�<9w��u�,0�<Ë��C ���z ��u���Ê<?t<*u�GFJt�QW�?������J��_Y�M ��t��u	�$�,A< r���ÈG	�0 ��t��v�����q r��G
� ��t��r�����X r��G�1�����I<,tB��u�����7��V�5 ^r��K���Ë>���u��ì$�,A< s���þ/�þ�ô u	�,0<
s�Ĭ,0<
s�
��Ë�<���c �j@����9�젣@�| ��I s�11ɇ, ����I�!�/5�!���F ��W�d����)�����/%�!�Q���G�  �-�u �u�G�E�	 �|���� �u��E�3YÀ>�t&�F �&�&���u���8�v��ô9H��&���@�