PGDMP     $                    {           rabbit_breeds_database    15.4    15.3 $    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    16390    rabbit_breeds_database    DATABASE     �   CREATE DATABASE rabbit_breeds_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';
 &   DROP DATABASE rabbit_breeds_database;
                postgres    false            �            1259    16415    ears    TABLE     ^   CREATE TABLE public.ears (
    id integer NOT NULL,
    ear character varying(10) NOT NULL
);
    DROP TABLE public.ears;
       public         heap    postgres    false            �            1259    16422    furs    TABLE     ^   CREATE TABLE public.furs (
    id integer NOT NULL,
    fur character varying(10) NOT NULL
);
    DROP TABLE public.furs;
       public         heap    postgres    false            �            1259    16408    origins    TABLE     d   CREATE TABLE public.origins (
    id integer NOT NULL,
    origin character varying(20) NOT NULL
);
    DROP TABLE public.origins;
       public         heap    postgres    false            �            1259    16398    rabbit_descriptions    TABLE     �   CREATE TABLE public.rabbit_descriptions (
    rabbit_id integer NOT NULL,
    min_size real,
    max_size real,
    color_description character varying(256),
    arba_recognized boolean,
    brc_recognized boolean,
    ear_id integer
);
 '   DROP TABLE public.rabbit_descriptions;
       public         heap    postgres    false            �            1259    16391    rabbits    TABLE     b   CREATE TABLE public.rabbits (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);
    DROP TABLE public.rabbits;
       public         heap    postgres    false            �            1259    16444    rabbits_furs    TABLE     b   CREATE TABLE public.rabbits_furs (
    rabbit_id integer NOT NULL,
    fur_id integer NOT NULL
);
     DROP TABLE public.rabbits_furs;
       public         heap    postgres    false            �            1259    16429    rabbits_origins    TABLE     h   CREATE TABLE public.rabbits_origins (
    rabbit_id integer NOT NULL,
    origin_id integer NOT NULL
);
 #   DROP TABLE public.rabbits_origins;
       public         heap    postgres    false            J          0    16415    ears 
   TABLE DATA           '   COPY public.ears (id, ear) FROM stdin;
    public          postgres    false    217   )       K          0    16422    furs 
   TABLE DATA           '   COPY public.furs (id, fur) FROM stdin;
    public          postgres    false    218   >)       I          0    16408    origins 
   TABLE DATA           -   COPY public.origins (id, origin) FROM stdin;
    public          postgres    false    216   �)       H          0    16398    rabbit_descriptions 
   TABLE DATA           �   COPY public.rabbit_descriptions (rabbit_id, min_size, max_size, color_description, arba_recognized, brc_recognized, ear_id) FROM stdin;
    public          postgres    false    215   �*       G          0    16391    rabbits 
   TABLE DATA           +   COPY public.rabbits (id, name) FROM stdin;
    public          postgres    false    214   	9       M          0    16444    rabbits_furs 
   TABLE DATA           9   COPY public.rabbits_furs (rabbit_id, fur_id) FROM stdin;
    public          postgres    false    220   ?       L          0    16429    rabbits_origins 
   TABLE DATA           ?   COPY public.rabbits_origins (rabbit_id, origin_id) FROM stdin;
    public          postgres    false    219   �@       �           2606    16421    ears ear_type_description_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.ears
    ADD CONSTRAINT ear_type_description_key UNIQUE (ear);
 G   ALTER TABLE ONLY public.ears DROP CONSTRAINT ear_type_description_key;
       public            postgres    false    217            �           2606    16419    ears ear_type_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ears
    ADD CONSTRAINT ear_type_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ears DROP CONSTRAINT ear_type_pkey;
       public            postgres    false    217            �           2606    16428    furs fur_description_key 
   CONSTRAINT     R   ALTER TABLE ONLY public.furs
    ADD CONSTRAINT fur_description_key UNIQUE (fur);
 B   ALTER TABLE ONLY public.furs DROP CONSTRAINT fur_description_key;
       public            postgres    false    218            �           2606    16426    furs fur_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.furs
    ADD CONSTRAINT fur_pkey PRIMARY KEY (id);
 7   ALTER TABLE ONLY public.furs DROP CONSTRAINT fur_pkey;
       public            postgres    false    218            �           2606    16412    origins origin_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.origins
    ADD CONSTRAINT origin_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.origins DROP CONSTRAINT origin_pkey;
       public            postgres    false    216            �           2606    16478    origins origins_origin_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.origins
    ADD CONSTRAINT origins_origin_key UNIQUE (origin);
 D   ALTER TABLE ONLY public.origins DROP CONSTRAINT origins_origin_key;
       public            postgres    false    216            �           2606    16491 ,   rabbit_descriptions rabbit_descriptions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.rabbit_descriptions
    ADD CONSTRAINT rabbit_descriptions_pkey PRIMARY KEY (rabbit_id);
 V   ALTER TABLE ONLY public.rabbit_descriptions DROP CONSTRAINT rabbit_descriptions_pkey;
       public            postgres    false    215            �           2606    16397    rabbits rabbit_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY public.rabbits
    ADD CONSTRAINT rabbit_name_key UNIQUE (name);
 A   ALTER TABLE ONLY public.rabbits DROP CONSTRAINT rabbit_name_key;
       public            postgres    false    214            �           2606    16395    rabbits rabbit_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.rabbits
    ADD CONSTRAINT rabbit_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.rabbits DROP CONSTRAINT rabbit_pkey;
       public            postgres    false    214            �           2606    16448    rabbits_furs rabbits_furs_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.rabbits_furs
    ADD CONSTRAINT rabbits_furs_pkey PRIMARY KEY (rabbit_id, fur_id);
 H   ALTER TABLE ONLY public.rabbits_furs DROP CONSTRAINT rabbits_furs_pkey;
       public            postgres    false    220    220            �           2606    16433 $   rabbits_origins rabbits_origins_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.rabbits_origins
    ADD CONSTRAINT rabbits_origins_pkey PRIMARY KEY (rabbit_id, origin_id);
 N   ALTER TABLE ONLY public.rabbits_origins DROP CONSTRAINT rabbits_origins_pkey;
       public            postgres    false    219    219            �           1259    16511    id_name_idx    INDEX     C   CREATE INDEX id_name_idx ON public.rabbits USING btree (id, name);
    DROP INDEX public.id_name_idx;
       public            postgres    false    214    214            �           1259    16512    rabbit_id_idx    INDEX     R   CREATE INDEX rabbit_id_idx ON public.rabbit_descriptions USING btree (rabbit_id);
 !   DROP INDEX public.rabbit_id_idx;
       public            postgres    false    215            �           2606    16492 6   rabbit_descriptions rabbit_descriptions_rabbit_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rabbit_descriptions
    ADD CONSTRAINT rabbit_descriptions_rabbit_id_fkey FOREIGN KEY (rabbit_id) REFERENCES public.rabbits(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.rabbit_descriptions DROP CONSTRAINT rabbit_descriptions_rabbit_id_fkey;
       public          postgres    false    3488    215    214            �           2606    16454 %   rabbits_furs rabbits_furs_fur_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rabbits_furs
    ADD CONSTRAINT rabbits_furs_fur_id_fkey FOREIGN KEY (fur_id) REFERENCES public.furs(id);
 O   ALTER TABLE ONLY public.rabbits_furs DROP CONSTRAINT rabbits_furs_fur_id_fkey;
       public          postgres    false    220    218    3503            �           2606    16502 (   rabbits_furs rabbits_furs_rabbit_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rabbits_furs
    ADD CONSTRAINT rabbits_furs_rabbit_id_fkey FOREIGN KEY (rabbit_id) REFERENCES public.rabbits(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.rabbits_furs DROP CONSTRAINT rabbits_furs_rabbit_id_fkey;
       public          postgres    false    220    214    3488            �           2606    16439 .   rabbits_origins rabbits_origins_origin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rabbits_origins
    ADD CONSTRAINT rabbits_origins_origin_id_fkey FOREIGN KEY (origin_id) REFERENCES public.origins(id);
 X   ALTER TABLE ONLY public.rabbits_origins DROP CONSTRAINT rabbits_origins_origin_id_fkey;
       public          postgres    false    3493    216    219            �           2606    16497 .   rabbits_origins rabbits_origins_rabbit_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rabbits_origins
    ADD CONSTRAINT rabbits_origins_rabbit_id_fkey FOREIGN KEY (rabbit_id) REFERENCES public.rabbits(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.rabbits_origins DROP CONSTRAINT rabbits_origins_rabbit_id_fkey;
       public          postgres    false    214    219    3488            J      x�3�L-JM.�2���/������ 3��      K   >   x�3����K�2�,��/*�2��MM�,��2�,J��2�L.-ʩ�2�,.)J�L�(����� ���      I     x�5�In�0Eן��	�H�ܥZflղdhhꜾ���?A<T(�f/)s�D��^��ưR�dBv�Gj!~:�C.q��z���/�g|C
%�~Dk�>�C|�Nw�!c�+V��)|�ƞ��T�{eǤ��)�ԸE��V�\�ok�?���o�©UU$y~/�H�a3���s�Ǌ
�ĕ}E�Gdo�t�jZ9.�[����e+���t�j�=q�-+�����2�[&}�)Ss�����`��XIc������=Ȯ�6-8��EMvu�{H�a������냈� E炸      H   C  x��ZK��^�O��dc�M�=s�\���D�LɒCIU��(��łIQ~u}�&��i�����D�n�(ۈh���=:Dc$�%џ���.���U���������|�E�Iw�׶��Hl
��"ٶ�з��{�M��������/r��z&�VX�h��VYIe��9���G!��j�w԰B�MIsT�b�N�Y�w�{���"3u����v�؂hQݮ����N쾝`�T|R�C��x��B-�T"��rb�'y��c���n�zm�V巫�1>M{eƻ�p$2m��5|vh�VO#t��$m �+�T�F�������7�'�߉�f�Ӑk�*��l�;���Q�B	��v��u_'�x
;V��aVy�]seUVq���x<��ԫ� �[�F]������9�N�%�������&j�i�S6��S�㪟����[�|ݨa�qI<9���?�Ǖ|����t��墤�]�V��ч���.�����-�c����Fy�2�]�^?�i��ѝX�V�	���]�'_�j'�!;��p����(;�1�-lſ�����S:���*ʣ2��3qT��]�i�}��4�������8���zćB�����v|�(�E�`P�X�~��C���<_�R*|���Yְ/)JrW�4HS`��5f�%QEE4�z�!+!��ô_[��z�ȁ����N��C���N��\��er��fzy�&@S��\�v۶�`���ׅMG~��a���
�e�AM���3L�>��lw��C�_7�;��-a_��;5�_Y0F5�p�!	�S��B6 9W0�-�v#@2�u�0��j�.L���}o@�ӿ�p��ZÝ�d�-�1�v�.,���җ��,��$-H\VR��:7c��M Y>��C�JF�d��W���A0�[�'�	���a���1,Ol|�F��59ٹk��0:�������p]�~�S�F�t�~)h��8�\��yE��9����Mge�Z=��"1p �!t�V��ʞ��� I_<{�%]q�!������F��N������a�8Fb�_ڣدa��ӕx�9���#&�
�w4��E#Н�e�$���Q��1� ����~~s��F��v��N-ĺ�]Y�JP���7��B8DwF��&�	Ly���ol����k)��)$[5�CT�s}wZx�?�\�i��a�
s�z�lҏ�Q����i������^����x��Q⏹=fh��@�0>d�w�?N!���p��f)O(NF������� ����
�U(t�X�`��uJ�V��h�n��W{�;4�ϊ �B��Εc�d7鰂�J���nK��H�ݻ0�f`ƅ�gM����A$O෱{ȉ^\ J��2AU��'^�eC�"����$(��s\�Q�?��}MZQxz� ����D�l9�,�6�����&ȷ�	��A��+NwèT�r\�?�	���@�
9��t�gg�-��m��C�F���!��������$Ȝq����9%�.�;[z:^W<��!%�+�<c-�.Kه1tV�uf�b���Sw���9@�	R��@�ߗ�B��F�^y���=X�s��S4��Ig�ͱ��ʋ�1�\WRD�X�����v��uIWRW��*���)s�ˇ���X�������� ����s���%Z+��� �K���:`1'=9%��x�B}��`�La�&�"��ؖ|\W�,��L��"S%�^��!ɴk��D{�xW="<��
>��������K.2��X\�BP����6A��8��L��m*�R+��X�(��� W�w��0�y��TL���V�s��O���HHLd���JC`�s ;|g�� �|�3�����ݠ>��v����*'�,Ll����6*�	�b��:���I6��(̖-��S����;|cȒm��-/�񊌂e2�Ă��S��
+W:��8llU����Q����c��
�!t/�8�Rj-�I�;�4�u�.]�,x�t�iF�~K��� �3B�5r��-��r��备���<ϴ�i��=�!&����b�����e��Հ{p�2��w�KH`���(�q4�҉�9�'qj�(C��a0Ҽ�s�+�+�!D�A#wL�몽��YE�۲Ok�m>_�wX�c��YJI�7�$7�-��'ر�]�~G}�'g�uV�`<���&!���_��[�k �jy��Ǟ��T2Ĩ��� �f��u��K����&|}|j6Ob�k�se�q���ݡ�n��i>(��f�}�q���ޅ�;���7_m�f�K��~�qrz^�gAI�H�@��d��E��V�1>����a�.���%��P���v�����_F[RI<I
6';�=CF�6���~�������:z:�]B���n'�"���t:�:J�W��E�n"c/���8!���@�8��I]e�(�bgO��*��6�
�l�쐈tΏ�"��ȶƞ���-z��+�y͚��Y�x&^zY��m��$�ܶ&�/Qp�Y�0=�����>O��K�=1G!馉$ XxFԠ��dh�@���6��F�9��D9i���	(���j�5��Ӗϗ�nu.~݌�e<��\�s9�cI���$w��N"����a���}��)�����	ƨ�
�FŢk�m]gj��99�2D1!Ø����D�(J�u>JO��6�frD�}�瑀�����_��L��B��֭��.� ���vV�%���.7�	nY�g�30_�}rrgz�'\Cwᗸ.��
��;�8��lp��İhs�����~󨘣'D��UF_ ���<^��b���.����{��׷�5n���bg��n�>��� �iTV\�5�#2=�����'M{�eǜ�WI�#���\瘖#���]�/ܧ���S��g�&֝�)�1^����DX6U�ڲ]P�_F�
��S�����+ɬAz.�bX8%�
y6��w@:�D��v�}�������!�����̅�O@���H��s� �]]�`����C7p&��ۘ9�/ ���@�����D#�ݎ��g$�7�I�B���Lډ��:���P�:ɶ�fh\� ��fc�Lw����sMݰ�ḻ��"�ќm[�������)=�c�o:ćV��L�=x��Pbv�HnD8��ܙ���^����(r�H�)�<xCJ`#ي��X��{D l�ި��6+�nd����Y%?�eme�QEx�R(�d�W��τ��2I�j˒G����#x5+��w��K���TuGj��.���"�;Kp-�L�O����7��av�o�j�aj۸Ɠ3Z�ڒp�dW����oӬ�\yq��N���p��A��II�d�nHm���&+��V�y8���w.��U�3q`��y���-e��Y8Bh�t�HfN�T���v�W�1��uL��Lŋ�`���Tz����C����a�_*؛�WӚ�eFQ����5^/@"�3�%����#���hz�=0õ,� ��N���^����	�o�lo�|p{�8��.$y7)J���o��s���틱��S��?cv��Q��#�	�Y�M�p>���T�a7m��k3�������۷o�d!'&      G   �  x�mW���&��+�9Z���e퀖h�i2����!��6�l�a.$$���9��Q��W��8Ͱ���	���״8�I7J�?�8-O��<��D��V'��E	Z�c9m	���^$����r����g�d�).-e���F>�|Ђ����	���v>����2xd'�%<�����'�-bl��X(k�Y�%L��(kwۊ�f�n�G����u��,#!`9j��܊-ʬ�D�Y	�]XS�U/v�^��'���fpPq݅<\L��=��x�i���lf)�64g'腝����ZDb��l�y~�Nj�E˛�����^��\�d��As�o�S*�Es8o��nLB�p�[s|��Ň3���K.oH�U/prV�j�Z�5E�8����M��4��-�Zps�_���a�-r@n+Ŷ� �����XZ�]z�TX���1��&/�/�;l�P$���!�+��퐤3
I�J�?_7N��ߊ�ű�[i�2����񮩥%\~�n\�YV�p&���n�`D�Dk��jɕ/�"��&�Sْ����P�*%��Jh�-m�!�I���#ךU�a�ZUN�;���Ǫ��: J"@={y$ҁ�=�* �
��GEKFD���O�c�j6��W���t�o�f�A�Y�5V�<�����|�uAb�����n���j�uM�y iݐ�����4&/~m�h���Mm���@�"B3��l�)#�yI�j�'sC�nm��|�5pˠ�t2(��!Q�2~�y��r��ۢ���m(L��~�x
��'��?�6'�_J���تm�		�
^|�Ym��'ݶ"[���4q@ېQN�����)�V���Nl=p�~�M�fDBkD`%Ks��aY`9s-��)aiIބu��n�z �ȍ_*|�����25��J[�F���q��YCO?�h�2�]�7�	���zL�/	�1��C�"'G����d�BFs<�/%�H�4�@0�������5���qC�!�����CՂ�=FS�iP2��)���^��98ˠ{'���;��xo���hP`Ȟ~v��ul l ޓ��+y$��^���b��P=-����Pmȝ��s˄uN�=�M��,K���B�x8�"3W5������p�*º%�%_�Q�����{<B�Ff���ˀ��m���� ]k!V�X�]Ų�Y_D5q<�G��%����nt�&p"���r裷%�Ti�H�J���j��f�)� F�Q��4��>ɉ�[�C%�HN�1�D|	2h��x����fo�x_{�k3�~e�*'�ۢEN��;aq(���`P�Ac���AL��r1��B���-P���Bj!��.�p�u	O����� �tG����P%
!�!.(	j�?v�BF6{�h�C|�I�㇕zX_��V~	���j
�}���ᙚ�����.���v	�]
<E�'��D,�s��
�A]�:���e݆��&bЖ��&�&a4�)��o�RJ�i��*      M   �  x�%�K�� ����L���.}�sLJ^��v�L
D�מV��5�/Ϯ��Ʃqk���'ቩan��I05�7�I�+h`�K�6��`۬�m�At��[-�Ct�N�N��!:Ā�TL�?�n�W�;`��v�N�M�I��F@L�	1!���=�]�v�.��V5_�%��bClַ!��N���筧q N��v =��q�q .=.ą���B�Y��XD��^��A'�����a��1���N�=��s~=���=�)���R����|�|�|�TsU��f�r���֤��2�b�fM-�E��HѤ�JÜfU֫tkvk*Y�,j=���_g^gZ���2�b/���n����1�U�.F��Q�L�Bf���n�J��ZF��7}�BF#��Y�]��ʨe�2��힫f�l���}]v�jh�������K�W�lt6J������߿�y��D�)      L   �  x�-T˵![K1h/��:^f1
~89G���p|_�;�j����k��?��6�E���U,k74�v�vz�S�n�a\�sF �k�5����q\S�kdzP5���ݶ�ζ��i'�Qc%�M��,j\��C����b	��$��6���y�Bz"G <-%�±(a��p�6�nW�a#�'yr�����"д��ж}:�o	@L����ҸI�@`�6b�B���%V�%����I�yz�FYV�W���<eg0)�LU���dS :(>!�Ts�S*���h���!9�+���ل5U�ZIx��bpUMY,�#���C$V��Rk!T����գ}	|)�;��Ժ�\Z�0��ݎ����Q2��И�����#t<�N^�NOZ������wT*�뾀�xYi�4)����+L�S��0��ku��by/`�J��%����y<[�F�p�٦l��f �.'�)@�㿡@W�*�?3��\��     