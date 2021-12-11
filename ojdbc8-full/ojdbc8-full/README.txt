ojdbc8-full.tar.gz - JDBC Thin Driver and Companion JARS
========================================================
This TAR archive (ojdbc8-full.tar.gz) contains the 18.15 release of the Oracle JDBC Thin driver(ojdbc8.jar), the Universal Connection Pool (ucp.jar) and other companion JARs grouped by category. 

(1) ojdbc8.jar (4,178,170 bytes)-(SHA1 Checksum: 01769cd061fd0df71bc0d18b175fe6708fd87a19)Certified with JDK 8; 

(2) ucp.jar (1,401,183 bytes) - (SHA1 Checksum:b2e128a97045d96afe5c66c5778ba1b47fe74af8)
Universal Connection Pool classes for use with JDK 8 -- for performance, scalability, high availability, sharded and multitenant databases.

(3) ojdbc.policy (11,596 bytes) - Sample security policy file for Oracle Database JDBC drivers

======================
Security Related JARs
======================
Java applications require some additional jars to use Oracle Wallets. 
You need to use all the three jars while using Oracle Wallets. 

(4) oraclepki.jar (310,291 bytes) - (SHA1 Checksum: d450475f1c140784150f261b8d37d79c40d137c2)
Additional jar required to access Oracle Wallets from Java
(5) osdt_cert.jar (208,738 bytes) - (SHA1 Checksum: 3a48452f19891c1aa7a032589c225aaa03d746c8)
Additional jar required to access Oracle Wallets from Java
(6) osdt_core.jar (312,198 bytes) - (SHA1 Checksum: cf2c5ad72b06865ec8390839e40cbb6b0b201181)
Additional jar required to access Oracle Wallets from Java

=============================
JARs for NLS and XDK support 
=============================
(7) orai18n.jar (1,664,011 bytes) - (SHA1 Checksum: 3e770b1e25cc572810156422cf5587efb656cd14) 
Classes for NLS support
(8) xdb.jar (264,881 bytes) - (SHA1 Checksum: b3a581464195b3ac90cb50537615a2c3571311fc)
Classes to support standard JDBC 4.x java.sql.SQLXML interface 
(9) xmlparserv2.jar (1,906,855 bytes) - (SHA1 Checksum: 4afe35e54345621bbef0ba094a67b03ae07e1444)
Classes to support standard JDBC 4.x java.sql.SQLXML interface 

====================================================
JARs for Real Application Clusters(RAC), ADG, or DG 
====================================================
(10) ons.jar (148,462 bytes) - (SHA1 Checksum: 03928c5cc2099e78c3e07befb3ad06b8d4f2758c)
for use by the pure Java client-side Oracle Notification Services (ONS) daemon
(11) simplefan.jar (32,066 bytes) - (SHA1 Checksum: 292e9329798fed8ae5ad418068c8cc312f7cf1b5)
Java APIs for subscribing to RAC events via ONS; simplefan policy and javadoc

=================
USAGE GUIDELINES
=================
Refer to the JDBC Developers Guide (https://docs.oracle.com/en/database/oracle/oracle-database/18/jjdbc/index.html) and Universal Connection Pool Developers Guide (https://docs.oracle.com/en/database/oracle/oracle-database/18/jjucp/index.html)for more details. 
