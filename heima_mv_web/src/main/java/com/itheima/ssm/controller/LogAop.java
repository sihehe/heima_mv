package com.itheima.ssm.controller;

import com.itheima.ssm.domain.SysLog;
import com.itheima.ssm.service.ISysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.invoke.MethodHandle;
import java.lang.reflect.Method;
import java.util.Date;


@Component
@Aspect
public class LogAop {
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private ISysLogService sysLogService;

    private Date visitTime;//开始时间
    private Class clazz;//访问的类
    private Method method;//访问的方法
  //前置通知 主要是获开始时间，执行的类是哪一个，执行的是哪一个方法
  @Before("execution(* com.itheima.ssm.controller.*.*(..))")
  public void doBefore(JoinPoint jp) throws NoSuchMethodException {
    visitTime=new Date();//当前的时间
    clazz=jp.getTarget().getClass();//具体要访问的类
      System.out.println("---------------------"+clazz);
    String methodName=jp.getSignature().getName();//获取访问的方法的名字
      System.out.println("======================="+methodName);
    Object[] args=jp.getArgs();//获取访问的方法的参数
    if(args==null||args.length==0){
        method = clazz.getMethod(methodName);//只能获取无参数的方法
    }else{
        Class[] classArgs=new Class[args.length];//有参方法
        for(int i=0;i<args.length;i++){
            classArgs[i]= args[i].getClass();
        }
        method=clazz.getMethod(methodName,classArgs);
    }

  }
    //后置通知
    @After("execution(* com.itheima.ssm.controller.*.*(..))")
    public void doAfter(JoinPoint jp) throws Exception {
        long time=new Date().getTime()-visitTime.getTime();//获取了访问的时长
        String url="";
       //通过反射完成获取url
       if(clazz!=null&&method!=null&&clazz!=LogAop.class){
         //获取类上的@RequestMapping("/orders")注解的值
         RequestMapping  classAnnotation = (RequestMapping)clazz.getAnnotation(RequestMapping.class);
         if(classAnnotation!=null){
             String[] classValue = classAnnotation.value();
             //2.获取方法上的@RequestMapping(xxx)
             RequestMapping  methodAnnotation = (RequestMapping)method.getAnnotation(RequestMapping.class);
             if(methodAnnotation!=null){
                 System.out.println("9999999999999999999");
                 String[] methodValue = methodAnnotation.value();
                 url=classValue[0]+methodValue[0];

                 //3.获取访问的IP地址
                 String ip=request.getRemoteAddr();
                 //4.获取当前操作的用户
                 //通过spring中securityContext获取
                 SecurityContext context = SecurityContextHolder.getContext();//从上下文中获取了当前登陆的用户
                 // request.getSession().getAttribute("SPRING_SECURITY_CONTEXT");
                 User user=(User)context.getAuthentication().getPrincipal();
                 String username = user.getUsername();

                 //将日志封装到sysLog对象
                 SysLog sysLog=new SysLog();
                 sysLog.setExecutionTime(time);//执行时长
                 sysLog.setIp(ip);
                 sysLog.setMethod("[类名]"+clazz.getName()+"[方法名]"+method.getName());
                 sysLog.setUrl(url);
                 sysLog.setUsername(username);
                 sysLog.setVisitTime(visitTime);
                 //调用service完成日志的记录操作
                 sysLogService.save(sysLog);
             }
         }
       }
    }
}
