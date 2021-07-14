# iKVM_Launcher
This is going to be a console launching solution that is designed to be compatible with as many iKVMs as possible. I am initially targeting Dell iDRAC6, Supermicro, and Avocent DSR series products. It is going to be written entirely in powershell, and the idea is for it to not require any external libraries to deploy (except a JRE). 

Currently a work in progress. Please bear with me for a few days. Thanks!


## Installation
You need to download the JRE from https://www.oracle.com/java/technologies/javase-jre8-downloads.html 

Below are direct links that only work once you have logged in and accepted Oracle license agreement.

**Windows:**
[jre-8u291-windows-x64.tar.gz](https://download.oracle.com/otn/java/jdk/8u291-b10/d7fc238d0cbf4b0dac67be84580cfb4b/jre-8u291-windows-x64.tar.gz)

**Linux:**
[jre-8u291-linux-x64.tar.gz](https://download.oracle.com/otn/java/jdk/8u291-b10/d7fc238d0cbf4b0dac67be84580cfb4b/jre-8u291-linux-x64.tar.gz)

**MacOS:**
[jre-8u291-macosx-x64.tar.gz](https://download.oracle.com/otn/java/jdk/8u291-b10/d7fc238d0cbf4b0dac67be84580cfb4b/jre-8u291-macosx-x64.tar.gz)

Extract the jre1.8.0_291 folder into the iKVM_Launcher directory.

Extract the files and place them where the script expects it:

```
iKVM_Launcher
├── Invoke-IKVMLauncher.ps1
├── jre1.8.0_291
│   ├── bin
│   │   └── java.exe
│   └── ...
|
└── README.md
```


