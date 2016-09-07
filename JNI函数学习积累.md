 最近一段时间，在工作方面比较闲，分配的Bug不是很多，于是好好利用这段时间就着源代码看了些许模块， 主要方式
   还是贼看贼看代码， 同时利用烧机的便利，加Log观看，基本上都能弄个脸熟 。心里想着该写点什么了？可是水平不够，再加上
   包括很多真正实现地方--中间层，基本上没看。于是乎，也就不好卖弄了。
 
      花了几天时间研究了下JNI，基本上知道如何使用了。照我的观点JNI还是不难的，难得只是我们一份尝试的心。 学习过程中，
  发现关于JNI函数资料真的很少，所谓“工欲善其事，便先利其器”，整理出了这份资料，希望能帮助你克服JNI学习的坎。
     
      主要资料来源： 百度文库的《JNI常用函数》 。
      同时对其加以了补充 。
   
 
    要素  ：
    1、该函数大全是基于C语言方式的，对于C++方式可以直接转换 ，例如，对于生成一个jstring类型的方法转换分别如下：
    C编程环境中使用方法为：(*env) ->NewStringUTF(env , "123") ;
    C++编程环境中（例如，VC下）则是： env ->NewStringUTF( "123") ; (使用起来更简单)
     
    2、关于下列有些函数中：*isCopy 的说明，例如，如下函数： 
    const char* GetStringUTFChars(JNIEnv*env, jstring string, jboolean *isCopy);  
     
     对第三个参数 jboolean *isCopy说明如下：
     当从JNI函数GetStringUTFChars函数中返回得到字符串B时，如果B是原始字符java.lang.String的一份拷贝，
     则isCopy  被赋值为JNI_TRUE。如果B是和原始字符串指向的是JVM中的同一份数据，则isCopy  被赋值为JNI_FALSE。
     当isCopy  为JNI_FALSE时，本地代码绝不能修改字符串的内容，否则JVM中的原始字符串也会被修改，这会打破Java语言中字符串不可变的规则。
     通常，我们不必关心JVM是否会返回原始字符串的拷贝，只需要为isCopy传递NULL作为参数 。
    ---- 以上内容来自 《JNI编程指南》
 
一、类操作             
   
 
  	 jclass DefineClass (JNIEnv *env, jobject loader,   const jbyte *buf , jsize bufLen); 
     功能：从原始类数据的缓冲区中加载类。 
     参数： envJNI 接口指针。
     loader分派给所定义的类的类加载器。  
     buf包含 .class 文件数据的缓冲区。   
     bufLen  缓冲区长度。  
     返回值：返回 Java 类对象。如果出错则返回NULL。
     抛出：  ClassFormatError  如果类数据指定的类无效。 
   	    	ClassCircularityError  如果类或接口是自身的超类或超接口。   
       		OutOfMemoryError  如果系统内存不足。                  
 

                       
     jclass FindClass (JNIEnv *env, const char *name);
     功能: 该函数用于加载本地定义的类。它将搜索由CLASSPATH 环境变量为具有指定名称的类所指定的目录和 zip文件。
     参数：envJNI 接口指针。
      name  类全名（即包名后跟类名，之间由"/"分隔）.如果该名称以“[（数组签名字符）打头，则返回一个数组类。 
     返回值：返回类对象全名。如果找不到该类，则返回 NULL。   
     抛出：   ClassFormatError  如果类数据指定的类无效。 
		     ClassCircularityError  如果类或接口是自身的超类或超口。
		     NoClassDefFoundError  如果找不到所请求的类或接口的定义。
		     OutOfMemoryError   如果系统内存不足。      
 
     jclass GetObjectClass (JNIEnv *env, jobject obj); 
     功能：通过对象获取这个类。该函数比较简单，唯一注意的是对象不能为NULL，否则获取的class肯定返回也为NULL。     
     参数：  env   JNI 接口指针。            
            obj   Java 类对象实例。         
   
     jclass GetSuperclass (JNIEnv *env, jclass clazz);          
     功能：获取父类或者说超类 。 如果 clazz 代表类class而非类 object，则该函数返回由 clazz 所指定的类的超类。 如果 clazz 指定类 object 或代表某个接口，则该函数返回NULL。           
     参数：  env   JNI 接口指针。            
            clazz  Java 类对象。            
     返回值：由 clazz 所代表的类的超类或 NULL。               
                          
    jboolean IsAssignableFrom (JNIEnv *env, jclass clazz1,  jclass clazz2);           
    功能：确定 clazz1 的对象是否可安全地强制转换为clazz2。            
    参数：  env  JNI 接口指针。            
              clazz1 第一个类参数。               
              clazz2 第二个类参数。               
    返回值：  下列某个情况为真时返回 JNI_TRUE：               
                    1、 第一及第二个类参数引用同一个 Java 类。              
                    2、 第一个类是第二个类的子类。             
                    3、 第二个类是第一个类的某个接口。    
 
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
         
二、异常操作                  
                        
  jint  Throw(JNIEnv *env, jthrowable obj);         
      功能：抛出 java.lang.Throwable 对象。                 
       参数： env  JNI 接口指针。            
                 obj   java.lang.Throwable 对象。         
       返回值：  成功时返回 0，失败时返回负数。             
       抛出：    java.lang.Throwable 对象 obj。           
                
  jint ThrowNew (JNIEnv *env ,  jclass clazz,  const char *message);            
     功能：利用指定类的消息（由 message 指定）构造异常对象并抛出该异常。               
     参数： env    JNI 接口指针。            
                clazz  java.lang.Throwable 的子类。          
                message  用于构造java.lang.Throwable对象的消息。           
     返回值： 成功时返回 0，失败时返回负数。             
     抛出：  新构造的 java.lang.Throwable 对象。                 
                   
  jthrowable ExceptionOccurred (JNIEnv *env);              
    功能：确定是否某个异常正被抛出。在平台相关代码调用 ExceptionClear() 或 Java 代码处理该异常前，异常将始终保持
        抛出状态。                  
    参数：  env  JNI 接口指针。            
    返回值： 返回正被抛出的异常对象，如果当前无异常被抛出，则返回NULL。           
                      
 void ExceptionDescribe (JNIEnv *env);         
    功能：将异常及堆栈的回溯输出到系统错误报告信道（例如 stderr）。该例程可便利调试操作。               
    参数：env   JNI 接口指针。            
                    
  void ExceptionClear (JNIEnv *env);                
   功能：清除当前抛出的任何异常。如果当前无异常，则此例程不产生任何效果。                  
   参数： env   JNI 接口指针。            
                  
  void FatalError (JNIEnv *env, const char *msg);           
   功能：抛出致命错误并且不希望虚拟机进行修复。该函数无返回值。             
   参数：  env   JNI 接口指针。            
               msg   错误消息。          
             
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     
 
三、全局及局部引用             
                      
   jobject NewGlobalRef (JNIEnv *env, jobject obj);         
     功能：创建 obj 参数所引用对象的新全局引用。obj 参数既可以是全局引用，也可以是局部引用。全局引用通过调用 
          DeleteGlobalRef() 来显式撤消。          
     参数：env   JNI 接口指针。            
                obj    全局或局部引用。                 
     返回值： 返回全局引用。如果系统内存不足则返回 NULL。          
                      
  void DeleteGlobalRef (JNIEnv *env, jobject globalRef);                 
     功能： 删除 globalRef 所指向的全局引用。         
     参数： env    JNI 接口指针。            
                globalRef  全局引用。         
                              
  void  DeleteLocalRef (JNIEnv *env, jobject localRef);          
     功能： 删除 localRef所指向的局部引用。             
     参数： env   JNI 接口指针。            
                 localRef  局部引用。            
             
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
 
四、对象操作          
          
      jobject AllocObject (JNIEnv *env, jclass clazz);  
     功能：分配新 Java 对象而不调用该对象的任何构造函数。返回该对象的引用。clazz 参数务必不要引用数组类。   
     参数： env  JNI 接口指针。
       clazz  Java 类对象。
     返回值： 返回 Java 对象。如果无法构造该对象，则返回NULL。 
     抛出： InstantiationException：如果该类为一个接口或抽象类。 
       OutOfMemoryError：如果系统内存不足。          
                        
      jobject NewObject (JNIEnv *env ,  jclass clazz,  jmethodID methodID, ...);   //参数附加在函数后面 
      jobject NewObjectA (JNIEnv *env , jclassclazz,  jmethodID methodID, jvalue *args);//参数以指针形式附加   
      jobjec tNewObjectV (JNIEnv *env , jclassclazz,  jmethodID methodID, va_list args);//参数以"链表"形式附加            

  	  功能：构造新 Java 对象。方法 ID指示应调用的构造函数方法。注意：该 ID特指该类class的构造函数ID ， 必须通过调用 
      GetMethodID() 获得，且调用时的方法名必须为 <init>，而返回类型必须为 void (V)。clazz参数务必不要引用数组类。 
      参数：  env  JNI 接口指针。            
              clazz  Java 类对象。            
              methodID 构造函数的方法 ID。               
      NewObject 的其它参数：  传给构造函数的参数，可以为空 。                  
      NewObjectA 的其它参数： args：传给构造函数的参数数组。              
      NewObjectV 的其它参数： args：传给构造函数的参数 va_list。       
	           
	  返回值： 返回 Java 对象，如果无法构造该对象，则返回NULL。                 
	  抛出：   InstantiationException  如果该类为接口或抽象类。                 
	              OutOfMemoryError   如果系统内存不足。                  
	              构造函数抛出的任何异常。                  
	                               
	   jclass GetObjectClass (JNIEnv *env, jobject obj);         
	   功能：返回对象的类。             
	   参数： env  JNI 接口指针。            
	              obj  Java 对象（不能为 NULL）。               
	   返回值： 返回 Java 类对象。              
	                          
	   jboolean IsInstanceOf (JNIEnv *env, jobject obj, jclass clazz);             
	   功能：测试对象是否为某个类的实例。                  
	   参数：  env  JNI 接口指针。            
	               obj  Java 对象。           
	               clazz Java 类对象。            
	   返回值：如果可将 obj 强制转换为 clazz，则返回 JNI_TRUE。否则返回 JNI_FALSE。NULL 对象可强制转换为任何类。           
                           
       jbooleanIsSameObject (JNIEnv *env, jobjectref1, jobject ref2);            
       功能：测试两个引用是否引用同一 Java 对象。         
       参数：  env  JNI 接口指针。            
               ref1  Java 对象。                  
               ref2   Java 对象。                  
      返回值： 如果 ref1 和 ref2 引用同一 Java 对象或均为 NULL，则返回 JNI_TRUE。否则返回   			JNI_FALSE。         
        
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
                  
五、 字符串操作             
                                 
        jstring  NewString (JNIEnv *env, const jchar *unicodeChars,   jsize len); 
    功能：利用 Unicode 字符数组构造新的 java.lang.String 对象。   
    参数：   env：JNI 接口指针。
     unicodeChars：指向 Unicode 字符串的指针。 
     len：Unicode 字符串的长度。 
    返回值： Java 字符串对象。如果无法构造该字符串，则为NULL。 
    抛出： OutOfMemoryError：如果系统内存不足。  
      
    jsize  GetStringLength (JNIEnv *env, jstring string);
    功能：返回 Java 字符串的长度（Unicode 字符数）。 
    参数：  env：JNI 接口指针。
       string：Java 字符串对象。  
    返回值： Java 字符串的长度。
      
    const  jchar *  GetStringChars (JNIEnv*env, jstring string,  jboolean *isCopy);   
    功能：返回指向字符串的 Unicode 字符数组的指针。该指针在调用 ReleaseStringchars() 前一直有效。  
     如果 isCopy 非空，则在复制完成后将 *isCopy 设为 JNI_TRUE。如果没有复制，则设为JNI_FALSE。  
    参数：   env：JNI 接口指针。
    string：Java 字符串对象。  
    isCopy：指向布尔值的指针。   
    返回值：   指向 Unicode 字符串的指针，如果操作失败，则返回NULL。   
    
    void  ReleaseStringChars (JNIEnv *env, jstring string,  const jchar *chars);  
    功能：通知虚拟机平台相关代码无需再访问 chars。参数chars 是一个指针，可通过 GetStringChars() 从 string 获得。
    参数： env：JNI 接口指针。
      string：Java 字符串对象。  
      chars：指向 Unicode 字符串的指针。   
    
    jstring  NewStringUTF (JNIEnv *env, const char *bytes);
    功能：利用 UTF-8 字符数组构造新 java.lang.String 对象。   
    参数： env：JNI 接口指针。如果无法构造该字符串，则为 NULL。 
      bytes：指向 UTF-8 字符串的指针。  
    返回值：Java 字符串对象。如果无法构造该字符串，则为NULL。 
    抛出：  OutOfMemoryError：如果系统内存不足。  
    
       jsize  GetStringUTFLength (JNIEnv *env, jstring string);  
       功能：以字节为单位返回字符串的 UTF-8 长度。
       参数：   env：JNI 接口指针。
       string：Java 字符串对象。  
       返回值：  返回字符串的 UTF-8
    
       const char* GetStringUTFChars (JNIEnv*env, jstring string, jboolean *isCopy);   
       功能：返回指向字符串的 UTF-8 字符数组的指针。该数组在被ReleaseStringUTFChars() 释放前将一直有效。如果 isCopy 
      不是 NULL，*isCopy 在复制完成后即被设为 JNI_TRUE。如果未复制，则设为 JNI_FALSE。 
       参数：  env：JNI 接口指针。
      string：Java 字符串对象。  
      isCopy：指向布尔值的指针。   
       返回值：  指向 UTF-8 字符串的指针。如果操作失败，则为 NULL。 
    
       void  ReleaseStringUTFChars (JNIEnv *env, jstring string,  const char *utf);   
       功能：通知虚拟机平台相关代码无需再访问 utf。utf 参数是一个指针，可利用 GetStringUTFChars() 获得。  
       参数：   env：JNI 接口指针。
       string：Java 字符串对象。  
       utf：指向 UTF-8 字符串的指针。   
     