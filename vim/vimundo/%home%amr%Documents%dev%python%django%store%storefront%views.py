Vim�UnDo� �\@����t��B�M�As|s�s���)Ǡ�x   0   $#from django.shortcuts import render            >       >   >   >    T��j    _�                            ����                                                                                                                                                                                                                                                                                                                                                             T�f    �                 # Create your views here.5�_�                      M    ����                                                                                                                                                                                                                                                                                                                                                             T���     �                 M# TODO: add views from previous store version (maybe now class view oriented)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             T���    �                  �               5�_�                      #    ����                                                                                                                                                                                                                                                                                                                                                             T���    �          %      #from django.shortcuts import render5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T���     �                 #from django.shortcuts import render5�_�         
                  ����                                                                                                                                                                                                                                                                                                                                                             T���     �         &    �         &    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��      �         '      5from django.views.generic import DetailView, ListView5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��      �         '      /from .views.generic import DetailView, ListView5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��      �         '      .from views.generic import DetailView, ListView5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��     �         '      )from .generic import DetailView, ListView5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��     �         '      (from generic import DetailView, ListView5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��     �         '       from import DetailView, ListView5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��
     �         '      ,from store.model import DetailView, ListView5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��     �         '      "from store.model import , ListView5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��    �         '      )from store.model import Product, ListView5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             T��     �         '    �         '    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             T��     �         (      $#from django.shortcuts import render5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                                             T��    �         (      #from django.shortcuts import render5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             T��$     �         )      /from django.shortcuts import render_to_response�          (      $#from django.shortcuts import render5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��A    �         )      from django.h5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��Q    �         )      from store.model import Product5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             T��c     �         )       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             T��e     �         *       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             T��h     �         +       5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             T��k     �          ,       5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                             T��l     �      !   -       5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             T��n   	 �                 5�_�   !   #           "      A    ����                                                                                                                                                                                                                                                                                                                                                             T��|     �         -      j    return render_to_response('store/productsall.html', context, context_instance=RequestContext(request))5�_�   "   $           #      M    ����                                                                                                                                                                                                                                                                                                                                                             T��     �         .      f    context = {'carousel_products': carousel_products, 'products': products, 'categories': categories}5�_�   #   %           $      >    ����                                                                                                                                                                                                                                                                                                                                                             T��     �         /      g    return render_to_response('store/products.html', context, context_instance=RequestContext(request))5�_�   $   &           %   ,   .    ����                                                                                                                                                                                                                                                                                                                                                             T��     �   +   .   0      S            products = Product.objects.filter(categories__id__contains=category_id)5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                                                             T��    �                >    return render_to_response('store/products.html', context, �                M    context = {'carousel_products': carousel_products, 'products': products, �                A    return render_to_response('store/productsall.html', context, 5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             T���     �         1      &from django.http import RequestContext5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             T���    �         1      !from django.import RequestContext5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                             T��C    �         1      )from store.model import Product, Category5�_�   )   +           *      
    ����                                                                                                                                                                                                                                                                                                                                                             T��Q    �         1      *from store.models import Product, Category5�_�   *   ,           +   )   "    ����                                                                                                                                                                                                                                                                                                                                                             T���    �   (   *   1      "        category_id = self.args[0]5�_�   +   -           ,   )       ����                                                                                                                                                                                                                                                                                                                                                             T���     �   (   *   1      *        category_id = self.args[0] or None5�_�   ,   .           -   )        ����                                                                                                                                                                                                                                                                                                                                                             T���     �   (   *   1      +        category_id = (self.args[0] or None5�_�   -   /           .   )   ,    ����                                                                                                                                                                                                                                                                                                                                                             T���    �   (   *   1      4        category_id = (self.args or None)[0] or None5�_�   .   0           /   )   $    ����                                                                                                                                                                                                                                                                                                                                                             T���     �   (   *   1      ,        category_id = (self.args or None)[0]5�_�   /   2           0   )   )    ����                                                                                                                                                                                                                                                                                                                                                             T���    �   (   *   1      -        category_id = (self.args or [None)[0]5�_�   0   3   1       2           ����                                                                                                                                                                                                                                                                                                                                                  v        T�̌    �         1      def main_index(request):   >    carousel_products = Product.objects.filter(favourite=True)   7    products = Product.objects.filter(index_shown=True)   '    categories = Category.objects.all()       L    context = {'carousel_products': carousel_products, 'products': products,   (               'categories': categories}   =    return render_to_response('store/products.html', context,   G                              context_instance=RequestContext(request))        5�_�   2   4           3           ����                                                                                                                                                                                                                                                                                                                                                  v        T��:     �                E                            context_instance=RequestContext(request))�                %            'categories': categories}�                #categories = Category.objects.all()�                3products = Product.objects.filter(index_shown=True)�                :carousel_products = Product.objects.filter(favourite=True)5�_�   3   5           4      '    ����                                                                                                                                                                                                                                                                                                                                                  v        T��D     �         1      '    categories = Category.objects.all()5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                  v        T��G     �                 5�_�   5   7           6           ����                                                                                                                                                                                                                                                                                                                                                  v        T��G     �                 5�_�   6   8           7           ����                                                                                                                                                                                                                                                                                                                                                  v        T��H     �         0      Hcontext = {'carousel_products': carousel_products, 'products': products,5�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                  v        T��J     �         0      9return render_to_response('store/products.html', context,5�_�   8   :           9           ����                                                                                                                                                                                                                                                                                                                                                  v        T��L     �         0      9return render_to_response('store/products.html', context,5�_�   9   ;           :           ����                                                                                                                                                                                                                                                                                                                                                  v        T��R     �                C                          context_instance=RequestContext(request))�                $           'categories': categories}5�_�   :   <           ;           ����                                                                                                                                                                                                                                                                                                                                                  v        T��U     �         0      L    context = {'carousel_products': carousel_products, 'products': products,5�_�   ;   =           <           ����                                                                                                                                                                                                                                                                                                                                                  v        T��V     �         1      Hcontext = {'carousel_products': carousel_products, 'products': products,5�_�   <   >           =           ����                                                                                                                                                                                                                                                                                                                                                  v        T��[    �                 5�_�   =               >          ����                                                                                                                                                                                                                                                                                                                                                  v        T��i    �          0      $#from django.shortcuts import render5�_�   0           2   1           ����                                                                                                                                                                                                                                                                                                                                                             T�̂     �         1       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��     �         '    �          '      )#from django.shortcuts import renderender5�_�          	      
           ����                                                                                                                                                                                                                                                                                                                                                             T���     �         &    �         &      :indexfrom django.views.generic import DetailView, ListView5�_�              
   	           ����                                                                                                                                                                                                                                                                                                                                                             T���     �         &    �         &      :findexrom django.views.generic import DetailView, ListView5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                             T���     �         &      5from django.views.generic import DetailView, ListView   5from django.views.generic import DetailView, ListView5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             T���     �   
      %       5�_�                       M    ����                                                                                                                                                                                                                                                                                                                                                             T�f'     �                M# TODO: add views from previous store version (maybe now class view oriented)   M# TODO: add views from previous store version (maybe now class view oriented)5��