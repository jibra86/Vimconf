Vim�UnDo� S�G�(&O"��� u+]<��a�~��ˮ^��G      #                                 //                              f)�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             f)�.     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       f)�f     �                 #include <plog/initialize5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       f)�f     �                 #include <plog/5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       f)�g     �                 #include <plog/5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       f)�    �                �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        f)��     �               �               �                int getUserInput()   int main() {   }5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  V        f)��     �                 }5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                  V        f)��     �               �               5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                  V        f)��     �                 5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                  V        f)��     �                #ifdef ENABLE_DEBUGGING   'std::cerr << "getUserInput() called\n";   #endif5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f)��     �                #ifdef ENABLE_DEBUGGING   std::cerr << "main() called\n";   #endif5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       f)��     �                   �             5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                V       f)��     �               (    PLOGD << "getUserInput() is called";5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                V       f)��     �               *    PLOGD << "getUserInput() is called\n";5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                V       f)��     �               )    PLOGD << "getUserInput() is calledn";5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                V       f)��     �               (    PLOGD << "getUserInput() is called";5�_�                       O    ����                                                                                                                                                                                                                                                                                                                                                V       f)�     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                               *                  v        f)�     �               +                                         //5�_�                            ����                                                                                                                                                                                                                                                                                                                               *                  v        f)�3     �                   �             5�_�                       b    ����                                                                                                                                                                                                                                                                                                                               *                  v        f)�     �             5�_�                             ����                                                                                                                                                                                                                                                                                                                               "                  v        f)�    �               #                                 //5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V       f)�     �              �              �                int getUserInput() {   #ifdef ENABLE_DEBUGGING   'std::cerr << "getUserInput() called\n";   #endif       std::cout << "Value: ";       int x {};       std::cin >> x;       return x;   }       int main() {   #ifdef ENABLE_DEBUGGING   std::cerr << "main() called\n";   #endif       int x { getUserInput() };   ;    std::cout << "You've entered the value: " << x << "\n";       return 0;   }5��