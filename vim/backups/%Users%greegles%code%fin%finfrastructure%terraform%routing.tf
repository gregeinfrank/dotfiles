Vim�UnDo� ����	E%(�,���N������Q4g"�n,�  �                                  W�l    _�                    N        ����                                                                                                                                                                                                                                                                                                                           Y         _          V       W!-     �  N  V  q    �  N  O  q    5�_�                   O        ����                                                                                                                                                                                                                                                                                                                           `         f          V       W!-     �  N  Q  y       �  N  P  x    5�_�                   S       ����                                                                                                                                                                                                                                                                                                                           b         h          V       W!-      �  R  T  z          name = "spellcheck.fin.com"5�_�                   S       ����                                                                                                                                                                                                                                                                                                                           b         h          V       W!.;    �  R  T  z          name = "e.fin.com"5�_�                   S       ����                                                                                                                                                                                                                                                                                                                           b         h          V       W!.B    �  R  T  z          name = "e1.fin.com"5�_�                   S       ����                                                                                                                                                                                                                                                                                                                           b         h          V       W!.J    �  R  T  z          name = "sg.fin.com"5�_�      	             V       ����                                                                                                                                                                                                                                                                                                                           b         h          V       W!.U    �  U  W  z      8    records = ["${aws_instance.languagetool.public_ip}"]5�_�      
          	  Q       ����                                                                                                                                                                                                                                                                                                                           b         h          V       W!.g    �  P  R  z      6resource "aws_route53_record" "spellcheck-fin-com-A" {5�_�   	              
  Q       ����                                                                                                                                                                                                                                                                                                                           Q         Q   ,       v   ,    W!/N     �  P  R  z      0resource "aws_route53_record" "mail-fin-com-A" {5�_�   
                S       ����                                                                                                                                                                                                                                                                                                                           Q         Q   ,       v   ,    W!/[     �  R  T  z          name = "mail.fin.com"5�_�                   S       ����                                                                                                                                                                                                                                                                                                                           Q         Q   ,       v   ,    W!/]    �  R  T  z          name = ".fin.com"5�_�                           ����                                                                                                                                                                                                                                                                                                                           
                   V       W"�     �      z    �      z    5�_�                           ����                                                                                                                                                                                                                                                                                                                           
                   V       W"�     �      �    �      �    5�_�                          ����                                                                                                                                                                                                                                                                                                                           
                   V       W"�!    �      �          name    = "fin.com"5�_�                          ����                                                                                                                                                                                                                                                                                                                           
                   V       W"�,   	 �      �      ,resource "aws_route53_record" "fin-com-MX" {5�_�                    @        ����                                                                                                                                                                                                                                                                                                                            %                     V       W�
     �   @   K  �    �   @   A  �    5�_�                    :        ����                                                                                                                                                                                                                                                                                                                            @           :           V        W�     �   ?   A          }�   >   @              ttl     = "3600"�   =   ?          -    records = ["ibaraki-7495.herokussl.com."]�   <   >              type    = "CNAME"�   ;   =               name    = "www.fin.ventures"�   :   <          ?    zone_id = "${aws_route53_zone.fin-ventures-public.zone_id}"�   9   ;          8resource "aws_route53_record" "www-fin-ventures-CNAME" {5�_�                    A       ����                                                                                                                                                                                                                                                                                                                            @           :           V        W�     �   @   B  �      0resource "aws_route53_record" "fin-ventures-A" {5�_�                    C       ����                                                                                                                                                                                                                                                                                                                            @           :           V        W�   
 �   B   D  �          name    = "fin.ventures"5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            @          9          V       W�3    �   8   9          $# TODO: make this a static s3 bucket   :# resource "aws_route53_record" "www-fin-ventures-CNAME" {   A#     zone_id = "${aws_route53_zone.fin-ventures-public.zone_id}"   "#     name    = "www.fin.ventures"   #     type    = "CNAME"   /#     records = ["ibaraki-7495.herokussl.com."]   #     ttl     = "3600"   # }5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            9           B           V        W�G     �   �   �  �    �   �   �  �    5�_�                    �   #    ����                                                                                                                                                                                                                                                                                                                            9           B           V        W�K     �   �   �  �      4resource "aws_route53_record" "www-fin-ventures-A" {5�_�                    �   +    ����                                                                                                                                                                                                                                                                                                                            9           B           V        W�M     �   �   �  �      7resource "aws_route53_record" "www-getfin-ventures-A" {5�_�                    �   "    ����                                                                                                                                                                                                                                                                                                                            9           B           V        W�Z     �   �   �  �      ?    zone_id = "${aws_route53_zone.fin-ventures-public.zone_id}"5�_�                    �   )    ����                                                                                                                                                                                                                                                                                                                            9           B           V        W�\     �   �   �  �      B    zone_id = "${aws_route53_zone.getfin-ventures-public.zone_id}"5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            9           B           V        W�`     �   �   �  �           name    = "www.fin.ventures"5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            9           B           V        W�a     �   �   �  �      #    name    = "www.getfin.ventures"5�_�                     �       ����                                                                                                                                                                                                                                                                                                                            �           �          V       W�k    �      �          2# prod heroku app. TODO: replace with www.fin.com.   6resource "aws_route53_record" "www-getfin-com-CNAME" {   =    zone_id = "${aws_route53_zone.getfin-com-public.zone_id}"       name    = "www.getfin.com"       type    = "CNAME"   )    records = ["gifu-8218.herokussl.com"]       ttl     = "300"   }5�_�              	     Q       ����                                                                                                                                                                                                                                                                                                                           b         h          V       W!.e     �  P  R  z      "resource "aws_route53_record" "" {5��