Jeecg-P3插件开发框架
==========
特点：业务组件以JAR方式提供，插件模式、松耦合、可插拔、支持独立部署，也可以无缝集成Jeecg平台中。

	  
【架构说明】

    1.Jeecg-P3 采用SpringMvc + Minidao + Velocity + Maven(构建) 框架技术
    2.插件引入方式
        pom.xml文件中，引入新开发的插件
        <!-- P3 jar -->
 	    <dependency>
			<groupId>org.p3framework</groupId>
			<artifactId>jeecg-p3-biz-demo</artifactId>
			<version>1.0.0</version>
		</dependency>
	3.项目启动访问方式：
	  采用maven方式，启动Web项目
      http://localhost/jeecg-p3-web/{页面访问地址}
    4.页面层面不能采用jsp，需要采用模板语言Velocity
    5.插件式开发,每个业务组件以jar包方式提供
	6.数据库配置文件：
	  jeecg-p3-web/src/main/resources/dbconfig.properties

【项目说明】

	jeecg-p3-web               | 启动主项目
	jeecg-p3-biz-demo          | 插件项目Demo
    jeecg-p3-project-generator | 生成新插件工具	

【开发入门】

	☆准备工作：
		1.标准开发工具：eclipse + jdk7 + tomcat7 + mysql
		2.项目为maven工程，采用maven方式导入eclipse等IDE开发工具 

	☆快捷启动：
		第一步：创建Mysql数据库jeecg-p3，采用UTF-8编码，执行下面数据库脚本
				jeecg-p3-web/doc/sql/jeecg-p3-mysql.sql
		第二步：双击运行jeecg-p3-web\bin\run-tomcat7.bat或bin\run-tomcat.bat，
				启动Web服务器（第一次运行，需要下载依赖jar包，请耐心等待）。
		第三步：测试访问地址
				1. http://localhost/jeecg-p3-web/p3/wxActInvite.do?list
				2. http://localhost/jeecg-p3-web/p3/auth.do?list	
					
	☆Eclipse运行步骤：
		第一步：创建Mysql数据库jeecg-p3，采用UTF-8编码，执行下面数据库脚本
				jeecg-p3-web/doc/sql/jeecg-p3-mysql.sql
		第二步：采用maven方式启动项目 (jeecg-p3-web)
				项目右建->debug as->debug configurations->选中jeecg-p3-web项目->输入命令：tomcat:run
				注意：[1].update snapshots需要选中，官方会不断更新底层包
					  [2].插件项目不能单独启动，需以maven方式引入jeecg-p3-web项目中，启动web主项目
		第四步：测试访问地址
				1. http://localhost/jeecg-p3-web/p3/wxActInvite.do?list
				2. http://localhost/jeecg-p3-web/p3/auth.do?list

【代码生成器】

	1.工具类：jeecg-p3-web/src/main/java/util/P3CodeGenerateUtil.java
	2.配置文件：jeecg-p3-web/src/main/resources/p3-cg-config.properties
	
【插件生成器】

	1.工具类：jeecg-p3-project-generator/src/main/java/GeneratorMain.java
	2.配置文件：jeecg-p3-project-generator/src/main/resources/project-generator.properties
	
技术交流
==========
* 论坛：[www.jeecg.org](http://www.jeecg.org)
* Jeecg开发群②: 106838471